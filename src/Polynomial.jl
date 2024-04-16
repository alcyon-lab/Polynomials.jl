using Symbolics

const Polynomial = Num

function create_monomial_from_exponents(z::Vector{<:Number}, variables::Int)::Polynomial
    @variables X[1:variables]
    tmp = 1
    for i in eachindex(z)
        tmp = tmp * (X[i]^Int(z[i]))
    end
    return tmp
end
