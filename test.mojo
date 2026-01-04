from builtin._location import __call_location

@always_inline
fn my_assert(cond: Bool, msg: String):
    if not cond:
      var call_loc = __call_location()
      print("In", call_loc.file_name, "on line", String(call_loc.line) + ":", msg)

fn main():
    # This will print the file name and line number of the following call:
    my_assert(False, "always fails") 