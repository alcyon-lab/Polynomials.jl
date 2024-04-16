using Symbolics

const Polynomial = Num

function create_monomial_from_exponents(z::Vector{<:Number}, variables::Int)::Polynomial
    x = get_variable_array(variables)
    tmp = 1
    for i in eachindex(z)
        tmp = tmp * (x[i]^Int(z[i]))
    end
    return tmp
end

function get_variable_array(variables::Int)
    @variables x[1:variables]
    return x
end
