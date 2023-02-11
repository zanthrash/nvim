local setup, neotree = pcall(require, "neotree")
if not setup then
	return
end

neotree.setup()
