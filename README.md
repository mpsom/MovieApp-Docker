Αυτό το project περιλαμβάνει δύο services:

MovieAPI (backend) - Μια REST API που παρέχει δεδομένα ταινιών.
MovieFX (frontend) - Μια JavaFX εφαρμογή για την προβολή των δεδομένων ταινιών.

1.	Κάντε pull τα αρχεία docker-compose.yml και setup_xserver.bat  από το Git hub:
•	git clone https://github.com/mpsom/MovieApp-Docker.git

Προαπαιτούμενα για την εκτέλεση της εφαρμογής MovieApp
Εφόσον η moviefx είναι μια JavaFX εφαρμογή με GUI, ένας X Server απαιτείται για να εμφανιστεί η εφαρμογή.

2.	Χρήστες Windows 
Προτείνεται η εγκατάσταση του X Server VcXsrv.
Εκτελέστε το setup.bat που περιλαμβάνεται στο repo για να ρυθμίσετε αυτόματα τον X Server (VcXsrv).

Εναλλακτικά:
•	Εκτέλεση του XLaunch με ρυθμίσεις:

Multiple windows
Start no client
Disable access control

Για άλλους X Servers 
•	Ορίστε την μεταβλητή DISPLAY:
setx DISPLAY host.docker.internal:0.0
•	Βεβαιωθείτε ότι ο X Server τρέχει και υποστηρίζει GLX και OpenGL

4.	Χρήστες Linux
Οι χρήστες πρέπει να έχουν ενεργοποιημένο τον X Server (Xorg ή XWayland) και να επιτρέψουν την πρόσβαση σε Docker Containers.
	Για ρύθμιση X11 Forwarding, τρέξτε:
  •xhost +local:docker

	Για Wayland (Ubuntu 22.04+ & Fedora 35+)
  • export DISPLAY=:0

6.	Pull των docker images από το Docker hub:
•	docker pull mpsomatakis/moviefx:latest
•	docker pull mpsomatakis/movieapi:latest

7.	Εκτέλεση του docker-compose.yml που περιλαμβάνει τις ρυθμίσεις για τη σωστή επικοινωνία μεταξύ των images από τον τοπικό φάκελο με 
• docker-compose up -d


