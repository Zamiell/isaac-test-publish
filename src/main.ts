import { ModCallback } from "isaac-typescript-definitions";

const MOD_NAME = "test-2";

main();

function main() {
  const mod = RegisterMod(MOD_NAME, 1);

  mod.AddCallback(ModCallback.POST_NEW_ROOM, () => {
    print("test - number 3");
  });
}
