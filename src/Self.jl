module Self

export
    indexeswhere

"""
    indexeswhere(A, is)

Find indexes where `A` is `is`.
"""
function indexeswhere(A::AbstractArray{T}, is::T) where T
    IndexStyle(A) == IndexLinear() || throw(ArgumentError("Must be `IndexLinear`"))
    (1:length(A))[(A .== is)[:]]
end

end  # module
