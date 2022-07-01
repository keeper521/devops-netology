
local p = import '../params.libsonnet';
local params = p.components.hello;

[
  {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: 'frontend',
      labels: {
        app: 'frontend',
      },
    },
    spec: {
      replicas: params.replicas,
      selector: {
        matchLabels: {
          app: 'frontend',
        },
      },
      template: {
        metadata: {
          labels: {
            app: 'frontend',
          },
        },
        spec: {
          containers: [
            {
              name: 'frontend',
              image: 'keeper521/frontend',
              imagePullPolicy: 'Always',
            },
          ],
        },
      },
    },
  },
  {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: 'backend',
      labels: {
        app: 'backend',
      },
    },
    spec: {
      replicas: params.replicas,
      selector: {
        matchLabels: {
          app: 'backend',
        },
      },
      template: {
        metadata: {
          labels: {
            app: 'backend',
          },
        },
        spec: {
          containers: [
            {
              name: 'backend',
              image: 'keeper521/backend',
              imagePullPolicy: 'Always',
            },
          ],
        },
      },
    },
  },
  {
    apiVersion: 'apps/v1',
    kind: 'Deployment',
    metadata: {
      name: 'postgres',
      labels: {
        app: 'postgres',
      },
    },
    spec: {
      replicas: params.replicas,
      selector: {
        matchLabels: {
          app: 'postgres',
        },
      },
      template: {
        metadata: {
          labels: {
            app: 'postgres',
          },
        },
        spec: {
          containers: [
            {
              name: 'postgres',
              image: 'keeper521/postgres',
              imagePullPolicy: 'Always',
            },
          ],
        },
      },
    },
  },
]
