#!/bin/bash

# Script shows options for the user to select which command to run
# to rebuild docker image, run docker container, stop docker container, remove docker container, remove docker image

# Function to show options
show_options() {
    echo "Select an option:"
    echo "1. Rebuild docker image"
    echo "2. Run docker container"
    echo "3. Start docker container"
    echo "4. Stop docker container"
    echo "5. Remove docker container"
    echo "6. Remove docker image"
    echo "7. Show docker container logs"
    echo "8. Exit"
}

# Function to rebuild docker image
rebuild_image() {
    echo "Rebuilding docker image..."
    docker build -t ergogen-app .
}

# Function to run docker container
run_container() {
    echo "Running docker container..."
    echo "Access the app at http://localhost:80"
    docker run -dit --name ergogen-app-container -p 80:80 ergogen-app
}

# Function to start docker container
start_container() {
    echo "Starting docker container..."
    docker start ergogen-app-container
}

# Function to stop docker container
stop_container() {
    echo "Stopping docker container..."
    docker stop ergogen-app-container
}

# Function to remove docker container
remove_container() {
    echo "Removing docker container..."
    docker rm ergogen-app-container
}

# Function to remove docker image
remove_image() {
    echo "Removing docker image..."
    docker rmi ergogen-app
}

# Function to show docker container logs
show_logs() {
    echo "Showing docker container logs..."
    docker logs ergogen-app-container
}

# Print blinking ascii art text from ./ascii-art.txt
print_blinking_text() {
    while IFS= read -r line; do
        echo -e "\e[5m$line\e[0m"
        sleep 0.1
    done < ascii-art.txt
}

# Main function
main() {
    while true; do
        show_options
        read -p "Enter option: " option
        case $option in
            1) rebuild_image;;
            #Once the container is successfully running, print blinking ascii art text
            2) run_container && print_blinking_text;;
            3) start_container;;
            4) stop_container;;
            5) remove_container;;
            6) remove_image;;
            7) show_logs;;
            8) break;;
            *) echo "Invalid option";;
        esac
    done
}

main