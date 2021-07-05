import docker

client = docker.from_env()

for container in client.containers.list(all=True):
    print(f"""
        Name: {container.name}
        ID: {container.id}
        Status: {container.status}
    """)
