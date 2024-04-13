using AbstractAlgebra

const Polynomial{T} = AbstractAlgebra.Generic.MPoly{Rational{T}}

function create_monomial_from_exponents(z::Vector{<:Number}, variables::Int)::Polynomial{BigInt}
    VV = [string("x", i) for i in 1:variables]
    S, X = polynomial_ring(QQ, VV)
    tmp = 1
    for i in eachindex(z)
        tmp = tmp * (X[i]^Int(z[i]))
    end
    return tmp
end
