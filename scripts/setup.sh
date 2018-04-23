SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
      SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
      done
      DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
cd $DIR
chmod +x . -R
cd ..

if [ ! -d "../data" ]; then
  mkdir data/Neon data/Eidoo data/Exodus
fi
docker-compose build
# docker-compose up -d