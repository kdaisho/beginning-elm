module Profile exposing (Name, createName)

-- type alias Name =
--     { firstName : String
--     , lastName : String
--     }


createName : String -> String -> Name
createName firstName lastName =
    Name firstName lastName


type Name
    = Name String String
