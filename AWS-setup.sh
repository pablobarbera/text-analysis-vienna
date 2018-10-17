## step 1) login to console, sudo su, open R
## install packages from Setup
## for topic models, run: sudo apt-get install libgsl0-dev

# deleting users
for i in 0{1..9} {10..40}
do
	userdel -r ecpr$i
	userdel -r bigdata$i
done

# creating new users
for i in 0{1..9} {10..40}
do
	adduser --quiet --disabled-password --shell /bin/bash --home /home/vienna$i --gecos "User" vienna$i
	echo "vienna$i:password$i" | chpasswd
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	mkdir /home/vienna$i/code
	mkdir /home/vienna$i/data
	mkdir /home/vienna$i/credentials
	cp /home/rstudio/code/* /home/vienna$i/code/
	sudo chown vienna$i -R /home/vienna$i/
done	


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/01-loops-functions.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/02-intro-text-analysis.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/03-quanteda-intro.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/04-dictionary-methods.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/challenge1.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/challenge2.Rmd /home/vienna$i/code/
	cp /home/rstudio/data/trump-tweets.json /home/vienna$i/data/	
	cp /home/rstudio/data/FB-UK-parties.csv /home/vienna$i/data/	
	cp /home/rstudio/data/candidate-tweets.csv /home/vienna$i/data/	
	cp /home/rstudio/data/liwc-dictionary.csv /home/vienna$i/data/	
	sudo chown vienna$i -R /home/vienna$i/
done

# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge1-solutions.Rmd /home/vienna$i/code/
	sudo chown vienna$i -R /home/vienna$i/
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge2-solutions.Rmd /home/vienna$i/code/
	sudo chown vienna$i -R /home/vienna$i/
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/05-supervised-learning.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/06-advanced-supervised-learning.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/08-topic-models.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/07-text-discovery.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/09-advanced-topic-models.Rmd /home/vienna$i/code/

	cp /home/rstudio/code/challenge3.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/challenge4.Rmd /home/vienna$i/code/
	cp /home/rstudio/data/incivility.csv /home/vienna$i/data/	
	cp /home/rstudio/data/UK-tweets.csv /home/vienna$i/data/	
	cp /home/rstudio/data/nytimes.csv /home/vienna$i/data/	

	mkdir /home/vienna$i/backup
	cp /home/rstudio/backup/stm-output.Rdata /home/vienna$i/backup/

	sudo chown vienna$i -R /home/vienna$i/
done


# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge3-solutions.Rmd /home/vienna$i/code/
	sudo chown vienna$i -R /home/vienna$i/
done


# preparing tokens
for i in 0{1..9} {10..35} {38..40}
do
	cp /home/rstudio/ecpr-credentials/token$i /home/vienna$i/my_oauth
	sudo chown vienna$i -R /home/vienna$i/
done

# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/10-twitter-streaming-data-collection.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/11-twitter-REST-data-collection.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/challenge5.Rmd /home/vienna$i/code/
	cp /home/rstudio/code/challenge6.Rmd /home/vienna$i/code/
	sudo chown vienna$i -R /home/vienna$i/
done

# copying files and changing permissions
for i in 0{1..9} {10..40}
do
	cp /home/rstudio/code/challenge4-solutions.Rmd /home/vienna$i/code/
	sudo chown vienna$i -R /home/vienna$i/
done
