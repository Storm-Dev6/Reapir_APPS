# Microsoft Store Automatikus Javító Script

Ez a PowerShell alapú `.bat` script automatikusan javítja a Microsoft Store-ral kapcsolatos problémákat Windows operációs rendszeren.

### Funkciók

- **Store cache törlése**: A script törli a Microsoft Store gyorsítótárát, hogy megszüntesse a hibákat és a szinkronizálási problémákat.
- **Proxy beállítások visszaállítása**: Alaphelyzetbe állítja a proxy beállításokat, ha azok nem megfelelőek.
- **Rendszerfájlok ellenőrzése és javítása**: A DISM és SFC parancsokkal megjavítja a rendszerképet és a sérült fájlokat.
- **Microsoft Store újraregisztrálása**: A script újraregisztrálja a Microsoft Store alkalmazást és a Windows App Runtime-ot, hogy helyreállítsa a Store működését.

### Használat

1. Töltsd le a `Fix_Microsoft_Store.bat` fájlt.
2. Jobb klikk a fájlra, és válaszd a "Futtatás rendszergazdaként" opciót.
3. A script automatikusan végrehajtja a javítási lépéseket. Ha szükséges, újra kell indítani a számítógépet a változtatások alkalmazásához.

### Látótér / Kimenet

Miután elindítod a scriptet, a következő lépéseken fog keresztülmenni a rendszer, és az alábbi kimeneteket láthatod a terminálban:

---

```text
=== Microsoft Store automatikus javitasa indul... ===

1. Store cache torlese...

2. Proxy beallitasok visszaallitasa...

Current WinHTTP proxy settings:

    Direct access (no proxy server).


Ezután következik a DISM és SFC futtatása:

3. DISM es SFC futtatasa...

Deployment Image Servicing and Management tool
Version: 10.0.19041.3636

Image Version: 10.0.19045.5737

[==                         3.8%                           ]  # A DISM folyamat haladása


Majd a folyamat befejeződik, és a script megerősíti, hogy minden sikeresen javítva lett:

[==========================100.0%==========================] The restore operation completed successfully.
The operation completed successfully.

Beginning system scan.  This process will take some time.

Beginning verification phase of system scan.
Verification 8% complete.


Fontos
A script nem módosít semmilyen egyéb rendszerbeállítást, csak a Microsoft Store és a kapcsolódó alkalmazásokkal dolgozik.

A futtatásához rendszergazdai jogosultságok szükségesek.

Fejlesztő
A scriptet készítette: GAMESTORMZONE

Email: info@stormfilms.xyz
