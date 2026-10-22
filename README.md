# Programozási nyelvek evolúciója: Fortran → C → Rust

**Iskolai projekt · határidő: 2026. november 23. · 3 fős csapat**

A projekt a programozási nyelvek három korszakát kapcsolja össze: a tudományos számításokat népszerűsítő **Fortran** (1957), az operációsrendszer-fejlesztéshez kötődő **C** (1970-es évek eleje) és a memóriabiztonságot előtérbe helyező **Rust** (1.0: 2015) világát.

> Fontos: a Fortran-forrás **modern Fortran 2008** kód, nem az 1957-es FORTRAN I eredeti szintaxisa. A történeti évszám a nyelv első megjelenésére vonatkozik.

## Beadandók

| Fájl | Tartalom |
| --- | --- |
| `docs/Programozasi_nyelvek_evolucioja.docx` | Szerkeszthető, 5–10 oldalas dolgozat |
| `docs/Programozasi_nyelvek_evolucioja.pdf` | Beadásra kész PDF |
| `presentation/Programozasi_nyelvek_evolucioja.pptx` | 10 perces előadás, előadói jegyzetekkel |
| `presentation/Eloadas_forgatokonyv.md` | 3 főre bontott, időzített beszédvázlat |
| `src/` | A három programozási nyelv azonos feladatot megoldó forráskódja |
| `scripts/check.sh` | Fordítás és eredményellenőrzés Linuxon / WSL alatt |
| `resources/Forrasok.md` | Forrásjegyzék és linkek |

## Azonos feladat mindhárom nyelven

A bemeneti egész számok: `12, 18, 25, 31, 44`.

Elvárt szabványos kimenet:

```text
Sum: 130
Average: 26.00
```

### Linux / WSL: egy parancsos ellenőrzés

```bash
bash scripts/check.sh
```

A szkript a telepített fordítókat ellenőrzi; hiányzó fordítónál `SKIP` jelzést ad, tehát ez nem jelenti a kód sikeres ellenőrzését. Rusthoz [rustup](https://rustup.rs/) és `cargo` szükséges.

### Kézi fordítás és futtatás

**Fortran** (gfortran):

```bash
gfortran -std=f2008 -Wall -Wextra -fcheck=all src/fortran/main.f90 -o fortran_demo
./fortran_demo
```

**C** (gcc):

```bash
gcc -std=c11 -Wall -Wextra -Wpedantic -Werror src/c/main.c -o c_demo
./c_demo
```

**Rust** (Cargo):

```bash
cargo run --manifest-path src/rust/Cargo.toml
```

Windows alatt a megfelelő fordítók telepítése után a C/Fortran kód közvetlenül is fordítható. A `scripts/check.sh` Bash környezetet igényel.

## Elemzési fókusz

- **Fortran:** képlet- és tömbközpontú gondolkodás; `allocatable`, `allocate`, `deallocate`; statikus típusok.
- **C:** kiszámítható alacsony szintű vezérlés; `malloc` és `free`; a pointerhibák kockázata.
- **Rust:** `Vec<T>`, ownership és borrowing (`&[i32]`); fordításidejű biztonsági ellenőrzések.

A kódpéldák nem teljesítmény-benchmarkok: kizárólag szintaxist, memóriahasználati mintákat és helyes működést hasonlítanak össze.

## Csoportmunka-javaslat

- **Milán:** technikai elemzés, forráskód, verziókezelés, C–Rust összehasonlítás.
- **Gergő:** történeti kutatás, dokumentációs szerkezet.
- **Dominik:** összehasonlító ábrák, konklúzió, diák összeállítása.

A prezentáció és a végleges szöveg közös ellenőrzést igényel. A fenti felosztás *javaslat*, módosítható.

## Feltöltés közös GitHub-repozitóriumba

A ZIP önmagában nem GitHub-repozitórium, de a mappaszerkezet verziókezelésre kész. A kicsomagolt mappában:

```bash
git init
git add .
git commit -m "Initial project: Fortran C Rust evolution"
git branch -M main
# A saját, előzetesen létrehozott GitHub repo URL-jét illeszd be:
git remote add origin <SAJAT_GITHUB_REPO_URL>
git push -u origin main
```

**Nem történt GitHubra feltöltés a ZIP készítése során.**

## Források

A feladatleírásból következő követelményeken túl a történelmi és technikai állítások hivatkozásai: `resources/Forrasok.md` és a dolgozat végén.
