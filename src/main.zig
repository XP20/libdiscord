const std = @import("std");
const testing = std.testing;

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}

// TODO: Write init()

// pub const Discord = @import("discord.zig");
// pub fn init(alloc: std.mem.Allocator, opts: Discord.Options) !Discord {
//     return Discord.init(alloc, opts);
// }

test "refAllDecls" {
    std.testing.refAllDecls(@This());
}
