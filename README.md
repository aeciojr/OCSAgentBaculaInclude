# OCSAgentBaculaInclude 

===

## Descrição
Implementação de agente OCS nos servidores linux para inventário do arquivo "bacula_include".

## Propósito
Consolidar no OCS os diretórios backupeados pelo bacula de cada servidor inventariado.

## Habilitando o módulo
1. Inserir a linha a seguir no "/etc/ocsinventory/modules.conf", após última declaração do "use Ocsinventory..."

```
use Ocsinventory::Agent::Modules::BaculaInclude;
```

2. Copiar o módulo BaculaInclude.pm, em anexo, p/ diretório "/usr/share/perl5/Ocsinventory/Agent/Modules/"
