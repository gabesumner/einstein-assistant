sfdx shane:org:create -f config/project-scratch-def.json -d 3 -s --wait 60 --userprefix admin -o appbuilder.demo
sfdx shane:github:package:install -g GuidoOktana -r einstein-demos
sfdx force:source:push
sfdx force:user:permset:assign -n ED
sfdx shane:data:tree:import -p data/plan.json -d data/sfdx shane:user:password:set -g User -l User -p salesforce1
sfdx force:org:open