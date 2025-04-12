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

### Fontos

- A script nem módosít semmilyen egyéb rendszerbeállítást, csak a Microsoft Store és a kapcsolódó alkalmazásokkal dolgozik.
- A futtatásához rendszergazdai jogosultságok szükségesek.

---

### Fejlesztő

A scriptet készítette: [GAMESTORMZONE](https://github.com/GAMESTORMZONE)

Email: info@stormfilms.xyz
