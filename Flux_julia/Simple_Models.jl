### A Pluto.jl notebook ###
# v0.12.10

using Markdown
using InteractiveUtils

# ╔═╡ 19b51dae-25ee-11eb-1f13-67173e3d340d
using Flux

# ╔═╡ 2ff67df6-25ee-11eb-19f8-b15e1d852875
W = rand(2, 5)

# ╔═╡ 36e73740-25ee-11eb-3377-e18994e70154
b = rand(2)

# ╔═╡ 5270da52-25ee-11eb-16a3-91351f6ea625
predict(x) = W*x .+ b

# ╔═╡ 55f351f0-25ee-11eb-16a1-9da5e077be84
function loss(x, y)
  ŷ = predict(x)
  sum((y .- ŷ).^2)
end

# ╔═╡ 7afc960c-25ee-11eb-1dd6-7318b7693a2e
x, y = rand(5), rand(2)

# ╔═╡ fe6ab648-25ee-11eb-3880-c788d90198f7
loss(x, y) # ~ 3

# ╔═╡ ffaf9f64-25ee-11eb-33f1-151ea755d875


# ╔═╡ 8bf8cd98-25ee-11eb-157d-672f10d5d293
gs = gradient(() -> loss(x, y), params(W, b))

# ╔═╡ af84d090-25ee-11eb-051c-e323988a9d47
W̄ = gs[W]

# ╔═╡ c15b0698-25ee-11eb-3f03-8397b436859e
W .-= 0.1 .* W̄

# ╔═╡ d9b282b8-25ee-11eb-3d67-c77119ecceeb
loss(x, y)

# ╔═╡ Cell order:
# ╠═19b51dae-25ee-11eb-1f13-67173e3d340d
# ╠═2ff67df6-25ee-11eb-19f8-b15e1d852875
# ╠═36e73740-25ee-11eb-3377-e18994e70154
# ╠═5270da52-25ee-11eb-16a3-91351f6ea625
# ╠═55f351f0-25ee-11eb-16a1-9da5e077be84
# ╠═7afc960c-25ee-11eb-1dd6-7318b7693a2e
# ╠═fe6ab648-25ee-11eb-3880-c788d90198f7
# ╠═ffaf9f64-25ee-11eb-33f1-151ea755d875
# ╠═8bf8cd98-25ee-11eb-157d-672f10d5d293
# ╠═af84d090-25ee-11eb-051c-e323988a9d47
# ╠═c15b0698-25ee-11eb-3f03-8397b436859e
# ╠═d9b282b8-25ee-11eb-3d67-c77119ecceeb
