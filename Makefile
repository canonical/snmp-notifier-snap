lint:
	yamllint snap/snapcraft.yaml
	shellcheck snap/hooks/*
	shellcheck snap/local/*

clean:
	rm -f snmp-notifier*.snap
	sudo snap remove --purge snmp-notifier
	snapcraft clean

rebuild: clean
	snapcraft

install:
	sudo snap install --dangerous *.snap
