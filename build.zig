const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const discord_mod = b.addModule("discord", .{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const discord = b.addLibrary(.{
        .linkage = .static,
        .name = "discord",
        .root_module = discord_mod,
    });

    b.installArtifact(discord);
}
