# Bash
## bash / YT_LearnAmo  (*Italian*)
- `transcripts_for_LearnAmo.sh`
	- dedicated script to extract vtt transcripts from youtube playlist / channel
		- from videos, which are at least 10 minutes long
- `convert_vtt_into_text.sh`
	- converts vtt into txt files 
		- know issues:
			- sometimes files contain rubbish text - currently it's kept there as it is unusual error
			```text
			Ciao<00:00:00.280><c> a</c><00:00:00.399><c> tutti</c><00:00:00.599><c> e</c><00:00:00.960><c> bentornati</c><00:00:01.360><c> su</c><00:00:02.000><c> lamo</c><00:00:02.639><c> sei</c><00:00:03.000><c> in</c>
			```
	- **Improvements**:
		- then make Python script to upload folder into ReadLang
- usage:
```bash
# Download vtt files:
./transcipts_for_LearnAmo.txt it <url>

# convert vtt to txt
for n in $ls LearnAmo_raw/*.vtt; do echo $n; ./convert_vtt_into_text.sh "$n" ; done

# Then move all txt files into dedicated folder:
mv *.txt LearnAmo_txt/
```
### 1 liner to download subtitles and process them:
```bash
# This removes timestamps
yt-dlp --skip-download --write-subs --sub-lang it --exec before_dl:"sed -i -e '/^[0-9][0-9]:..*/d'  %(requested_subtitles.:.filepath)#q" "https://www.youtube.com/watch?v=O6jla75ksVk"
```
# Italian
## Italian / Simple Italian News
- [v] Downloaded all text and mp3 files since 2018 till 2024-07-01
### Scripts:
#### Python
- get_all_days_with_articles.ipynb - download all articles and mp3 files of particular month
- get_all_days_with_articles_get_archive.ipynb - download all articles and mp3 files from `start_date` to `present`
#### Bash
- sort_files.sh - to move files into folder structure  `yyyy/mm/file.txt`


# Portuguese
