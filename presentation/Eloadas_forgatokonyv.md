# 10 perces előadás – beszédvázlat és munkamegosztás

**Szereplők:** Milán, Gergő, Dominik (a sorrend megváltoztatható).  
**Időtartam:** kb. 10:00, a diákhoz tartozó időkereteket tartva.

| Dia | Idő | Előadó | Téma |
|---|---:|---|---|
| 1. Nyitó | 0:35 | Gergő | A kutatási kérdés: miért változnak a nyelvek? |
| 2. Idővonal | 1:05 | Gergő | 1957, 1972, 2015: történelmi kontextus |
| 3. Fortran | 1:10 | Gergő | Tudományos számítások és tömbök |
| 4. C | 1:15 | Milán | Unix, pointerek, erőforrás-kezelés |
| 5. Rust | 1:15 | Milán | Ownership, borrowing, fordításidejű védelem |
| 6. Táblázat | 1:10 | Dominik | Paradigma, típusosság, memóriakezelés |
| 7. Ugyanaz a feladat | 1:00 | Milán | Egyező kimenet, eltérő kódszerkezet |
| 8. Trade-off | 1:05 | Dominik | Biztonság és kontroll kapcsolata |
| 9. Örökség | 0:55 | Dominik | Mit tanult a modern fejlesztés? |
| 10. Zárás | 0:30 | Dominik | Három kulcsüzenet, köszönet |
| **Összesen** | **10:00** | | |

## Dia 1 – Nyitó (0:35)

„A programozási nyelvek története nem arról szól, hogy a régieket kidobtuk, és jöttek az újak. Inkább arról, hogy minden korszak más problémára keresett hatékony választ. Ezt három nyelven mutatjuk be: Fortran, C és Rust.”

## Dia 2 – Idővonal (1:05)

„Az 1950-es években a fő feladat az volt, hogy tudományos képleteket ne gépi utasítások sorozataként kelljen felírni. 1957-ben a Fortran ezt nagy lépésben egyszerűsítette. Az 1970-es évek elején a C egy operációs rendszer, a Unix fejlesztésének igényeire adott választ. A Rust 2015-ös stabil kiadása a nagy teljesítmény és a memóriabiztonság együttes elérését helyezte középpontba.”

## Dia 3 – Fortran (1:10)

„A John Backus vezette IBM-csapat a Fortrant numerikus számításokra tervezte. Lényeges újítása, hogy a programozó matematikai műveletekkel dolgozhatott közvetlenebbül. A mai Fortran sokat változott: modulok, dinamikus tömbök és modernebb nyelvi konstrukciók vannak benne. A példánk modern Fortran 2008, és az `allocatable` tömbön jól látszik a számolásközpontú szemlélet.”

## Dia 4 – C (1:15)

„Dennis Ritchie a Bell Labsnál a C-t a korai Unix fejlesztéséhez alakította ki. A C a gépközeli vezérlés és a magas szintű leírás között teremtett egyensúlyt. A példában `malloc` foglal memóriát, és `free` szabadítja fel. Ez nagy szabadság, de ha elrontjuk a felszabadítást, túlindexelést vagy mutatóhasználatot, komoly hibák keletkezhetnek.”

## Dia 5 – Rust (1:15)

„A Rust más megoldást választ. Nem kötelező futásidejű garbage collectort használni a memóriabiztonság alapvető garanciáihoz: a tulajdonlás és a kölcsönzés szabályait a fordító ellenőrzi. A `Vec` tárolja az adatokat, a `&[i32]` pedig kölcsönkapja a szeletet. Így a függvény nem veszi át a gyűjtemény tulajdonjogát.”

## Dia 6 – Táblázat (1:10)

„Mindhárom nyelv statikusan típusos. Ugyanakkor a paradigma és az erőforrás-kezelés jelentősen eltér. A Fortran kiemelten támogatja a numerikus és tömbműveleteket; a C közvetlen pointereket és kézi dinamikus memóriakezelést; a Rust ownership szabályokat. Nem arról van szó, hogy az egyik minden esetben jobb, hanem arról, hogy más kompromisszumokat kínálnak.”

## Dia 7 – Ugyanaz a feladat (1:00)

„Öt számot összegzünk és átlagolunk. Minden program ugyanazt adja: 130 és 26,00. A lényeg nem a számolás nehézsége, hanem az eltérő mód, ahogy az adatot tároljuk és átadjuk. A teljes forráskód a Git-repozitóriumba szánt mappában található.”

## Dia 8 – Trade-off (1:05)

„A C-nél a memóriakezelés helyessége főként a programozó felelőssége. A modern Fortran `allocatable` elemei magasabb szintű memóriakezelési eszközt kínálnak. A Rust a tulajdonlás és kölcsönzés miatt bizonyos problémás mintákat már fordítás közben elutasít. Ez nem jelenti azt, hogy Rustban semmilyen hiba nem fordulhat elő, különösen az `unsafe` kódoknál.”

## Dia 9 – Örökség (0:55)

„A Fortran ma is fontos a tudományos és műszaki számításokban. A C továbbra is sok rendszerprogramozási feladat meghatározó nyelve, és szintaxisa más nyelvekre is hatott. A Rust tanulsága, hogy a hibamegelőzés egy részét magába a nyelv és a fordító tervezésébe lehet építeni.”

## Dia 10 – Zárás (0:30)

„Három korszak, három hangsúly: számolhatóság, közvetlen kontroll, memóriabiztonság. A programozási nyelvek fejlődése valójában mindig a problémák és kompromisszumok újragondolása. Köszönjük a figyelmet.”

## Előadás előtti lista

- Ellenőrizzétek, hogy a három név megfelelően szerepel-e a címoldalon és a diákon.
- Nyissátok meg a PPTX-et PowerPointban, és ellenőrizzétek az előadói jegyzeteket, valamint az áttűnéseket.
- Futtassátok a `bash scripts/check.sh` parancsot egy olyan gépen is, amelyen a Rust toolchain telepítve van.
- Töltsétek fel az egész projektmappát közös Git-repozitóriumba; ellenőrizzétek a jogosultságokat.
