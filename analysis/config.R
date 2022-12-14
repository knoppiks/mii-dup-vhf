# Konfigurations-Datei für Vorhofflimmern Retrieval
# Bitte die folgenden Variablen entsprechend der Gegebenheiten vor Ort anpassen!

emptyToNull <- function(v) {
  if (v == '') return(NULL) else return(v)
}

DEBUG <- as.logical(Sys.getenv('DEBUG', "FALSE"))
# Run the Data Quality Check
DATA_QUALITY_REPORT <- as.logical(Sys.getenv('DATA_QUALITY_REPORT', "TRUE"))

# Wenn true (= dezentrale Analyse im DIZ), dann wird die Analyse nach dem
# Retrieval ausgeführt und nur die Ergebnisse der Analyse ins
# outputGlobal-Verzeichnis kopiert.
# Wenn false (= zentrale Analyse), dann wird die Analyse nicht automatisch nach
# dem Retrieval ausgefüht, sondern die Ergebnisse des Retrieval in das
# auszuleitenden outputGlobal-Verzeichnis gelegt.
DECENTRAL_ANALYSIS <- as.logical(Sys.getenv('DECENTRAL_ANALYSIS', "TRUE"))

# Directory where 'outputLocal' and 'outputGlobal' directories are located 
OUTPUT_DIR_BASE <- Sys.getenv('OUTPUT_DIR_BASE', '.')

message("Run Analysis with Parameters:")
message("-----------------------------")
message("              DEBUG = ", DEBUG)
message("DATA_QUALITY_REPORT = ", DATA_QUALITY_REPORT)
message(" DECENTRAL_ANALSYIS = ", DECENTRAL_ANALYSIS)
message("    OUTPUT_DIR_BASE = ", OUTPUT_DIR_BASE)
