# Minecraft Survival Server Setup with Cross-Play (Java 1.20+ & Bedrock)

This guide explains how to set up a Minecraft survival server that supports cross-play between Java Edition 1.20+ and Bedrock Edition using PaperMC, GeyserMC, and Floodgate plugins.

## Requirements

- A server machine with Java installed.
- PaperMC 1.20+ server jar.
- GeyserMC plugin for Paper.
- Floodgate plugin for Paper.

## Step 1: Download PaperMC 1.20+

1. Go to https://papermc.io/downloads
2. Download the latest PaperMC 1.20+ jar file.
3. Place the jar file in your server directory (e.g., the root directory of this project).

## Step 2: Setup PaperMC Server

1. Run the server jar once to generate configuration files:
   ```
   java -jar paper-1.21.4-231.jar
   ```
2. Accept the EULA by editing `eula.txt` and setting:
   ```
   eula=true
   ```

## Step 3: Download GeyserMC and Floodgate Plugins

- GeyserMC plugin: https://github.com/GeyserMC/Geyser/releases/latest
- Floodgate plugin: https://github.com/GeyserMC/Floodgate/releases/latest

Download the latest builds of both plugins and place them into the `server/plugins` folder.

## Step 4: Configure GeyserMC

1. Start the server once to generate the `server/plugins/Geyser-Spigot/config.yml` file.
2. Edit `config.yml` to set the following:

```yaml
bedrock:
  address: 0.0.0.0   # IP address to listen on for Bedrock clients
  port: 19132        # Default Bedrock port

remote:
  address: 127.0.0.1 # IP address of the Java server (usually localhost)
  port: 25565        # Java server port

auth-type: floodgate  # Use Floodgate for Bedrock authentication
```

## Step 5: Floodgate Setup

Floodgate works automatically when `auth-type` is set to `floodgate` in GeyserMC config. No additional configuration is needed.

## Step 6: Start the Server

Run the server using the provided script:

```
.\run_server.bat
```

This script will move the PaperMC jar into the `server` directory if needed and start the server with appropriate memory settings.

## Step 7: Connect to the Server

- Java Edition players connect to `yourserver:25565`
- Bedrock Edition players connect to `yourserver:19132` (UDP port)

## Additional Resources

- [GeyserMC Official Website](https://geysermc.org/)
- [Floodgate GitHub Repository](https://github.com/GeyserMC/Floodgate)

## Language Selection in Discord

If you join the official Discord server for support, you can select your preferred language channel to communicate in English or Vietnamese.
