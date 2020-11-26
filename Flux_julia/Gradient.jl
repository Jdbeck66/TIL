### A Pluto.jl notebook ###
# v0.12.10

using Markdown
using InteractiveUtils

# ╔═╡ 5c39e6d0-25eb-11eb-108d-f10e768eab2d
using Flux

# ╔═╡ 400032c0-25ec-11eb-113e-7fa136aa88e2
md"# Implement Gradient" 

# ╔═╡ ba44a668-25eb-11eb-1b5e-75530ea5ef29
f(x) = 3x^2 + 2x +1;

# ╔═╡ 9fd4fd16-25ec-11eb-17e0-a7be01359ada
f(x,y) = sum((x .- y).^2);

# ╔═╡ cad23716-25eb-11eb-3a4c-2b478468156e
df(x) = gradient(f,x)[1]; # df/dx = 6x + 2

# ╔═╡ dfa27da2-25eb-11eb-25f2-c3e179d71b1d
df(2)

# ╔═╡ e3a171a6-25eb-11eb-2db5-b5592dcf08ee
d2f(x) = gradient(df,x)[1];

# ╔═╡ 143d4bee-25ec-11eb-38c8-d702ccda749e
d2f(2)

# ╔═╡ b83d8a76-25ec-11eb-0011-bf7c225f77ab
gradient(f, [2, 1], [2, 0])

# ╔═╡ 3c4c511c-25ed-11eb-2c25-4f8bd46c9bfe
x = [2, 1];

# ╔═╡ 8a94ab8a-25ed-11eb-2a7a-5f1927746661
y = [2, 0];

# ╔═╡ 8f45e934-25ed-11eb-0af3-93347c20bb1b
gs = gradient(params(x, y)) do
         f(x, y)
       end

# ╔═╡ 98b22756-25ed-11eb-3c7f-f7b881a3ac69
gs[x]

# ╔═╡ a55b1620-25ed-11eb-2cc0-f7ce46cf8725
gs[y]

# ╔═╡ abc47498-25ed-11eb-2968-91d06a3ec738


# ╔═╡ 3673376a-25ed-11eb-04a5-1f98d0eb8d2f


# ╔═╡ c9b08376-25ec-11eb-1cc4-fb3dcd8cdf4c


# ╔═╡ c117c33c-25ec-11eb-0da8-836e8745d2e1


# ╔═╡ Cell order:
# ╠═5c39e6d0-25eb-11eb-108d-f10e768eab2d
# ╟─400032c0-25ec-11eb-113e-7fa136aa88e2
# ╠═ba44a668-25eb-11eb-1b5e-75530ea5ef29
# ╠═cad23716-25eb-11eb-3a4c-2b478468156e
# ╠═dfa27da2-25eb-11eb-25f2-c3e179d71b1d
# ╠═e3a171a6-25eb-11eb-2db5-b5592dcf08ee
# ╠═143d4bee-25ec-11eb-38c8-d702ccda749e
# ╠═9fd4fd16-25ec-11eb-17e0-a7be01359ada
# ╠═b83d8a76-25ec-11eb-0011-bf7c225f77ab
# ╠═3c4c511c-25ed-11eb-2c25-4f8bd46c9bfe
# ╠═8a94ab8a-25ed-11eb-2a7a-5f1927746661
# ╠═8f45e934-25ed-11eb-0af3-93347c20bb1b
# ╠═98b22756-25ed-11eb-3c7f-f7b881a3ac69
# ╠═a55b1620-25ed-11eb-2cc0-f7ce46cf8725
# ╠═abc47498-25ed-11eb-2968-91d06a3ec738
# ╠═3673376a-25ed-11eb-04a5-1f98d0eb8d2f
# ╠═c9b08376-25ec-11eb-1cc4-fb3dcd8cdf4c
# ╠═c117c33c-25ec-11eb-0da8-836e8745d2e1
