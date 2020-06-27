# Clean up executed containers

[Return Home](../README.md)

jq is a command-line JSON processor. It's like sed or grep but specifically designed to deal with JSON data. The main benefit of jq over generic text-processing tools like grep and sed is that it understands the JSON data structure, allowing you to create complex queries with a single expression.

To illustrate, imagine you're trying to find the name of the containers in this JSON file:

```Json
{
  "apiVersion": "v1",
  "kind": "Pod",
  "metadata": {
    "labels": {
      "app": "myapp"
    },
    "name": "myapp",
    "namespace": "project1"
  },
  "spec": {
    "containers": [
      {
        "command": [
          "sleep",
          "3000"
        ],
        "image": "busybox",
        "imagePullPolicy": "IfNotPresent",
        "name": "busybox"
      },
      {
        "name": "nginx",
        "image": "nginx",
        "resources": {},
        "imagePullPolicy": "IfNotPresent"
      }
    ],
    "restartPolicy": "Never"
  }
}
```

If you try to grep directly for name, this is the result:

```Bash
$ grep name k8s-pod.json
        "name": "myapp",
        "namespace": "project1"
                "name": "busybox"
                "name": "nginx",
```

grep returned all lines that contain the word name. You can add a few more options to grep to restrict it and, with some regular-expression manipulation, you can find the names of the containers. To obtain the result you want with jq, use an expression that simulates navigating down the data structure, like this:

```Bash
$ jq '.spec.containers[].name' k8s-pod.json
"busybox"
"nginx"
```

This command gives you the name of both containers. If you're looking for only the name of the second container, add the array element index to the expression:

```Bash
$ jq '.spec.containers[1].name' k8s-pod.json
"nginx"
```

Because jq is aware of the data structure, it provides the same results even if the file format changes slightly. grep and sed may provide different results with small changes to the format.

[jq website](https://stedolan.github.io/jq/)

Access through `tldr jq` or `man jq` to access via terminal.