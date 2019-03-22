## TODO

- [x] MySQL add user for Maxwell and fEMR (install.sql)
- [x] Add container for fEMR - pull down latest version and build
- [ ] Setup fEMR to run and be able to visit via browser 
    - [ ] run initial migrations
    - [ ] import existing database
- [ ] Make sure binlog file is writing reliably
- [ ] Can we run maxwell after a trip as long as the binlog is enabled?
- [ ] Write some test code to read the `json` output from Maxwell and insert into central DB
- [ ] what are roadblocks that are missing?


### Run sample Ubuntu Setup

build server
`docker build --no-cache -t femr ./femr-server/`

run container - OSX
`docker run -it --rm -v "${PWD}":/home/femrapp -w /home/femrapp -u femrapp femr bash`