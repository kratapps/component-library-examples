alias=libexamples

scratch-org:
	make create-scratch-org
	make install-component-library
	sfdx force:source:push -u ${alias}

create-scratch-org:
	sfdx force:org:create -s -a ${alias} -f config/project-scratch-def.json -d 30

install-component-library:
	sfdx force:package:isntall -u ${alias} --package 04t5e000000vmNWAAY --noprompt -w 10

unit-test:
	sfdx force:apex:test:run -u ${alias} --codecoverage --testlevel RunLocalTests --resultformat human