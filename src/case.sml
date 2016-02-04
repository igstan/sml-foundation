structure Case =
struct
  fun unreachable reason = raise Fail reason
end
