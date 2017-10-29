# Agenda
1. Wstęp (3)
2. Szybki start (5)
3. Elasticsearch (5)
4. Demo Twitter - pełnotekstowe (5)
5. Demo Agg (5)
6. Outro (5)


# Dzisiaj
chcę odwrócić zależności
nie zaczynam od teorii , praktyka a potem trochę teorii

# Motywacja

## Dane
### Jakie są dane 
- rozproszone
- wielopostaciowe
### Podstawa informatyki
- przetwarzamy dane
- dane przekuj w informację
- człowiek: widzi kolory i wzory
### Dlaczego warto
- żeby szybko reagować
- żeby biznes czuł że ma kontrolę
- żeby widzieć trendy (konia z rzędem temu który widzi trendy grepując)

## Use case
1. Namierzamy błędy szybko
- wizualizacja
2. Anomalie bardzo widoczne
- dashboard


# Szybki start
## On premises
- będzie demo
## hostingowe
- AWS
- bonsai.io

## startujemy
- docker-compose
- health
- indices

# Elasticsearch podstawa
- definicja
- silnik: Lucene (też Solr)
- API : REST, językowo-specyficzne

## REST
pokazać Kibana devtools
## Python
fragment kodu z pycharm

# Elasticsearch - załaduj go
## ELK
- Elasticsearch to nie ELK
- części składowe
### Elasticsearch
silnik
### Logstash
- ładowanie
- inputy: file, twitter
### Kibana
- wizualizacja
- wykresy



# Elasticsearch - zastosowania
## pełny tekst
cechy systemu: 
- analizator
- ...
- polski i chiński
## agregacje
- liczby
- max,min,avg i inne
- nie jest realtime
- uwaga na budowę (dokładność != 100 procent)
- logstash domyślnie nie starczy

# Podstawowe pojęcia
## Indeks, shard
- czym jest
- różnica między indeks a shard
## Dokument
- wiersz
- json
PUT i GET pokaż

# Mapowania
- logstash auto auto
- definicja
- pokaż

# Demo-Twitter
## po czasie
- szybko widać rozkład danych
- szybko szukasz tego co trzeba
## tekst jest analizowany
- urwij 's
- domyślnie analizator standard, zmień na angielski

## dodatkowe tekstowe
- podpowiedzi
- wildcardy


# Outro

## Miskoncepcje
### Relacje się utracją
- da się (parent child)
- zalecana płaska struktura
### Użyjmy go zamiast bazy
- nie jest bazą danych
- nie ma transakcji (wersjonowanie)
- bezpieczeństwo dopiero z XPack

# Kontakt 
do mnie





