sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix admin -o assistant.demo
sfdx force:source:push
sfdx force:user:permset:assign -n EinsteinAssistant
sfdx shane:user:password:set -g User -l User -p salesforce1
sfdx force:org:open