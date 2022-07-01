[ 
  {
    apiVersion: 'v1',
    kind: 'Service',
    metadata: {
      name: 'frontend'
    },
    spec: {
      selector: {
        app: 'frontend'
      },
      ports: [
        {
          name: 'frontend',
          port: 80,
          protocol: 'TCP',
          nodePort: 32282
        }
      ],
      type: 'NodePort'
    }
  }
]  