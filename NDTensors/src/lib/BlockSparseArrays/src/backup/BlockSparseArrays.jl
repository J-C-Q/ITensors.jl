module BlockSparseArrays
using ..BackendSelection: Algorithm, @Algorithm_str
using BlockArrays:
  AbstractBlockArray,
  BlockArrays,
  BlockVector,
  Block,
  BlockIndex,
  BlockRange,
  BlockedUnitRange,
  findblockindex,
  block,
  blockaxes,
  blockcheckbounds,
  blockfirsts,
  blocklasts,
  blocklength,
  blocklengths,
  blockedrange,
  blocks
using Compat: Returns, allequal
using Dictionaries: Dictionary, Indices, getindices, set! # TODO: Move to `SparseArraysExtensions`.
using LinearAlgebra: Hermitian
using SplitApplyCombine: groupcount

export BlockSparseArray # , SparseArray

include("defaults.jl")
include("tensor_product.jl")
include("base.jl")
include("axes.jl")
include("abstractarray.jl")
include("permuteddimsarray.jl")
include("blockarrays.jl")
# TODO: Split off into `SparseArraysExtensions` module, rename to `SparseArrayDOK`.
# include("sparsearray.jl")
include("blocksparsearray.jl")
include("allocate_output.jl")
include("subarray.jl")
include("broadcast.jl")
include("fusedims.jl")
include("gradedrange.jl")
include("LinearAlgebraExt/LinearAlgebraExt.jl")

end
