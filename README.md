# Getting Started

Após clonar o repositório criar os binds correspondentes no BTP através dos comandos abaixo:

cf create-service xsuaa application cap_ext_serv-xsuaa
cf create-service-key cap_ext_serv-xsuaa cap_ext_serv-xsuaa-key
cf create-service destination lite cap_ext_serv-destination
cf create-service-key cap_ext_serv-destination cap_ext_serv-destination-key
cds bind -2 cap_ext_serv-xsuaa,cap_ext_serv-destination

Ajustar o arquivo .cdsrc-private.json com os dados do destination.

