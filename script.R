#FLB I

#KAPITEL I

#Code-Block I
(5 + 2 * 2) ^ 2

#Code-Block II
(5 + 2 * 2) ^ 2 #Dieser Teil wird berechnet
# 2/3*4    Dieser Teil nicht, er ist auskommentiert

#Dieser Kommentar geht über
#mehrere Zeilen

#Code-Block III
meineVariable <- 5

#Code-Block IV
meinString <- "Hallo Welt"
meinBoolwert <- TRUE

meinString
meinBoolwert

#Code-Block VI
meinVektor <- c(10, 11, 12, 13, 14)

#Code-Block VII
meinVektor[0] #4tes Element aus dem Vektor. Beginnt nicht bei 0

#Code-Block VIII
meinVektor[c(4, 5)]

#Code-Block IX
langerVektor <- rep(1, times = 10)
langerVektor

meineSequenz <- seq(from = 1, to = 5, by = 0.5)
meineSequenz

#Code-Block X
einfacheSequenz <- 1:10
einfacheSequenz

#Code-Block XI
zufallszahlen <- rnorm(n = 10, mean = 0, sd = 1)
zufallszahlen

#Code-Block XII
meineFunktion <- function(x, y) {
    ergebnis <- x * y
    return(ergebnis)
}

meineFunktion(3, 4)

#Code-Block XIII
?rnorm #Hilfedatei der Funktion

#Code-Block XIV
??rnorm #Begriff wird in den Hilfedateien von R gesucht

#Code-Block XV
3 == 4
3 == 3

#Code-Block XVI
x <- 3
(x == 3) || (x > 5)
(x == 3) && (x > 5)

#Code-Block XVII
x <- seq(from = 1, to = 10, by = 1)
y <- seq(from = 1, to = 10, by = 1)
z.summe <- x + y
z.produkt <- x * y

z.summe
z.produkt

#Code-Block XVIII
x <- seq(from = 1, to = 5, by = 0.5)

xAuswahl1 <- x[c(1, 5, 6)]
xAuswahl2 <- x[5:7]
xAuswahl3 <- x[c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]
xAuswahl4 <- x[x < 3]

xAuswahl1
xAuswahl2
xAuswahl3
xAuswahl4

#Code-Block IX
#install.packages("car") #soll nur einmal für die Installation durchgeführt werden. Danach auskommentiert belassen, um nachfolgenden
#Personen zu signalisieren, welche Pakete benötigt werden.

#Code-Block XX
library("car") #Das Paket wird geladen

#Reflexionsaufgaben
#1. Erstellen Sie einen Vektor mit dem Namen meinVektor und den Einträgen 10 bis 20.
meinVektor <- c(10:20)

#2. Multiplizieren Sie den Vektor mit der Zahl 6 und speichern Sie das Ergebnis in der Variable neuerVektor
neuerVektor <- meinVektor * 6

#3. Lassen Sie sich die ersten fünf Einträge von neuerVektor ausgeben.
meinVektor[1:5]

#4. Berechnen Sie in R, wie viele Einträge von neuerVektor größer oder gleich 75 sind.
length(neuerVektor[neuerVektor >= 75])

#KAPITEL II

#Code-Block I
probandenAnzahl <- 100
probandenRegion <- "Norddeutschland"

typeof(probandenAnzahl)
typeof(probandenRegion)

#Code-Block II
#Personenbezogene Daten
id <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) #die herkömmliche Methode
id <- 1:10 #Erzeugen einer einfachen Sequenz von 1 bis 10

#Code-Block III
alter <- c(20, 34, 24, 28, 28, 22, 20, 20, 34, 20)

#Code-Block IV
geschlecht <- c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1)
gewicht <- c(50, 65, 62, 57, 78, 70, 75, 80, 95, 80)
groesse <- c(157, 165, 160, 156, 170, 170, 185, 180, 190, 195)

#Code-Block V
#Testbezogene Daten
bearbeitungszeit <- c(162, 150, 161, 163, 165, 168, 154, 160, 168, 148)
unterbrechungen <- c(20, 15, 30, 23, 26, 20, 23, 26, 20, 5)
stimmung <- c(12, 10, 7, 9, 12, 5, 8, 5, 10, 6)
iqFluid <- c(107, 113, 118, 99, 99, 90, 105, 96, 119, 116)
iqKristallin <- c(104, 114, 106, 94, 93, 63, 94, 91, 124, 106)

#Code-Block VI
datenPerson <- cbind(id, alter, geschlecht, gewicht, groesse)
datenTest <- cbind(id, bearbeitungszeit, unterbrechungen, stimmung, iqFluid, iqKristallin)

#Code-Block VII
datenFramePerson <- data.frame(ID = id, Alter = alter, Geschlecht = geschlecht, Gewicht = gewicht, Groesse = groesse)
datenFrameTest <- data.frame(ID = id, Bearbeitungszeit = bearbeitungszeit, Unterbrechungen = unterbrechungen, Stimmung = stimmung, IQFluid = iqFluid, IQKristallin = iqKristallin)

#Code-Block VIII
datenFramePerson[1,]    #Auswahl der ersten Reihe/Zeile des Datenframes --> siehe nij bei Häufigkeitstabellen (Kontingenztabellen)
datenFramePerson[, 2]   #Auswahl der zweiten Spalte
datenFramePerson[1, 2] #Erste Zeile, zweite Spalte
datenFramePerson[1:3,] #Zeilen 1 bis 3

#Code-Block IX
datenFramePerson[datenFramePerson[, 2] > 30,] #Waehle alle Zeilen aus, bei denen die Vpn aelter als 30 Jahre ist.
datenFramePerson[datenFramePerson$Alter > 30,] #Waehle alle Personen die aelter als 30 Jahre ist.

#Code-Block X
datenFramePerson$Alter #Auswahl anhand des Variablennamens

#Code-Block XI
names(datenFramePerson) #Namen der Variablen
head(datenFramePerson) #Erste sechs Zeilen des Datensatzes
str(datenFramePerson) #Struktur des Datensatzes

#Code-Block XII
subset(datenFramePerson, subset = Geschlecht == '0')