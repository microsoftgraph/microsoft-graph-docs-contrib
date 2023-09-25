---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerTaskConfiguration = {
  '@odata.type': '#microsoft.graph.plannerTaskConfiguration',
  editPolicy: {
    rules: [
      {
        defaultRule: 'block',
        role: {
          '@odata.type': '#microsoft.graph.plannerRelationshipBasedUserType',
          roleKind: 'relationship',
          role: 'defaultRules'
        },
        propertyRule: {
          percentComplete: ['allow'],
          ruleKind: 'taskRule',
          assignments: {
            defaultRules: ['addSelf'],
            overrides: []
          }
        }
      },
      {
        defaultRule: 'block',
        role: {
          '@odata.type': '#microsoft.graph.plannerRelationshipBasedUserType',
          roleKind: 'relationship',
          role: 'taskAssignees'
        },
        propertyRule: {
          startDate: ['allow'],
          dueDate: ['allow'],
          percentComplete: ['allow'],
          order: ['allow'],
          ruleKind: 'taskRule',
          references: {
            defaultRules: ['allow'],
            overrides: [
              {
                name: 'userCreated',
                rules: ['allow']
              },
              {
                name: 'applicationCreated',
                rules: ['block']
              }
            ]
          },
          checkLists: {
            defaultRules: ['allow'],
            overrides: [
              {
                name: 'userCreated',
                rules: ['allow']
              },
              {
                name: 'applicationCreated',
                rules: ['check']
              }
            ]
          },
          assignments: {
            defaultRules: ['block'],
            overrides: [
              {
                name: 'userCreated',
                rules: ['removeSelf']
              },
              {
                name: 'applicationCreated',
                rules: ['check']
              }
            ]
          },
          appliedCategories: {
            defaultRules: [
              'allow'
            ],
            overrides: []
          }
        }
      }
    ]
  }
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/taskConfiguration')
	.version('beta')
	.update(plannerTaskConfiguration);

```