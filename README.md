# Spotify Playlist Manager with Terraform

## Overview

This project provides a Terraform-based solution to manage Spotify playlists. By using Terraform, you can automate the creation, update, and deletion of your Spotify playlists programmatically.

## Features

- **Create Playlists**: Automate the creation of new playlists.
- **Update Playlists**: Update existing playlists with new tracks.
- **Manage Tracks**: Add or remove tracks from your playlists.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Terraform installed on your local machine.
- Docker installed and running.
- A Spotify account with developer access.
- Spotify API credentials (Client ID and Client Secret).

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/barlakshan/Spotify_Playlist_Manage_with_Terraform.git
    cd Spotify_Playlist_Manage_with_Terraform
    ```

2. Install the required Terraform provider:

    ```sh
    terraform init
    ```

3. Set up your environment variables for Spotify API credentials:

    ```sh
    export SPOTIFY_CLIENT_ID="your_spotify_client_id"
    export SPOTIFY_CLIENT_SECRET="your_spotify_client_secret"
    ```

## Usage

1. Open the `main.tf` file in your VS Code Editor and define your desired playlist configuration. Here is an example:

    ```hcl
    provider "spotify" {
      client_id     = var.spotify_client_id
      client_secret = var.spotify_client_secret
    }

    resource "spotify_playlist" "example" {
      name        = "My Awesome Playlist"
      description = "A playlist created using Terraform"
      public      = true
    }

    resource "spotify_track" "track1" {
      playlist_id = spotify_playlist.example.id
      uri         = "spotify:track:4cOdK2wGLETKBW3PvgPWqT"
    }
    ```

2. Save your changes in the `main.tf` file.

3. Apply the Terraform configuration to create or manage your playlists:

    ```sh
    terraform apply
    ```

4. Follow the prompts to authenticate with your Spotify account.

5. Check your Spotify account to see the changes reflected in your playlists.

## Project Details

This project involves using Terraform to create multiple Spotify playlists for different occasions like morning, evening, party night, etc. Terraform will be used to automate the creation and management of these playlists.

For a detailed step-by-step guide, refer to the [project documentation](https://cloudchamp.notion.site/Creating-Multiple-Spotify-Playlists-Using-Terraform-3171668ad3074aa8acab147ad85e26f8).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
