FROM perl:5.24
MAINTAINER Pau Ruiz Safont psafont@ebi.ac.uk

# Dependencies
RUN cpanm Bundle::LWP REST::Client WWW::Curl WWW::Curl::Simple XML::Simple

COPY ./*.pl /usr/src/ebitools/
WORKDIR /usr/src/ebitools
CMD [ "perl", "ncbiblast_lwp.pl" ]
