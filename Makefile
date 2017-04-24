all: clean build run

build:
	mkdir bin/
	javac -d bin/ \
		-cp src:lib/cofoja.asm-1.3-20160207.jar \
		-processorpath lib/cofoja.asm-1.3-20160207.jar \
		src/farstar/Control.java \
		src/farstar/freight/Item.java \
		src/farstar/freight/Container.java \
		src/farstar/freight/exceptions/VolumeException.java \
		src/farstar/freight/exceptions/MassException.java \
		src/farstar/freight/exceptions/FreightException.java \
		src/farstar/ships/Speeder.java \
		src/farstar/ships/HeavyCombat.java \
		src/farstar/ships/interfaces/TransportShip.java \
		src/farstar/ships/interfaces/Ship.java \
		src/farstar/ships/interfaces/CombatShip.java \
		src/farstar/ships/Transporter.java \
		src/farstar/ships/LightCombat.java \
		src/farstar/Main.java \
		src/farstar/weapons/Blaster.java \
		src/farstar/weapons/Phaser.java \
		src/farstar/weapons/Weapon.java \
		src/farstar/weapons/exceptions/MaxWeaponException.java \
		src/farstar/weapons/exceptions/WeaponException.java \
		src/farstar/weapons/exceptions/IllegalWeaponException.java \
		src/tests_contracts/Test01.java

run:
	java -cp bin -javaagent:lib/cofoja.asm-1.3-20160207.jar tests_contracts.Test01

clean:
	rm -rf bin/
