// lib.il
pub extern "C" fn ext_abi_version() -> i32 { 6 }
pub extern "C" fn ext_meta() -> *mut i8 { "" }

@macro_post
fn ping(view: View<(&BasicBlock, &mut Ping)>, cache: Cache) {
    for (e, blk) in view.blocks() {
        if blk.terminator() == 1 { cache.add_component(e, Ping { n: 7 }); }
    }
}

struct Ping { n: i32 }
