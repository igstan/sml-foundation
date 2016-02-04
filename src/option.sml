structure Option : OPTION =
struct
  open Option

  fun getOrElse option default =
    case option of
      NONE => Lazy.force default
    | SOME a => a

  fun mapOrElse option f default =
    case option of
      NONE => Lazy.force default
    | SOME a => f a
end
