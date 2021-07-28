branch=main
git clone -b $branch https://github.com/aviskumar/Ultroid-Sudo /root/TeamUltroid
cp ultroid-sudo/.env /root/TeamUltroid/.env
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
