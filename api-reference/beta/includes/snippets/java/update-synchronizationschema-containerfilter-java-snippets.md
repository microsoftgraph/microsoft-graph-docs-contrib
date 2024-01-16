---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SynchronizationSchema synchronizationSchema = new SynchronizationSchema();
LinkedList<DirectoryDefinition> directoriesList = new LinkedList<DirectoryDefinition>();
DirectoryDefinition directories = new DirectoryDefinition();
directories.name = "Azure Active Directory";
LinkedList<ObjectDefinition> objectsList = new LinkedList<ObjectDefinition>();
ObjectDefinition objects = new ObjectDefinition();
objects.name = "User";
LinkedList<AttributeDefinition> attributesList = new LinkedList<AttributeDefinition>();
AttributeDefinition attributes = new AttributeDefinition();
attributes.name = "userPrincipalName";
attributes.type = AttributeType.STRING;
attributesList.add(attributes);
objects.attributes = attributesList;
objectsList.add(objects);
directories.objects = objectsList;
directoriesList.add(directories);
DirectoryDefinition directories1 = new DirectoryDefinition();
directories1.name = "Active Directory";
directoriesList.add(directories1);
DirectoryDefinitionCollectionResponse directoryDefinitionCollectionResponse = new DirectoryDefinitionCollectionResponse();
directoryDefinitionCollectionResponse.value = directoriesList;
DirectoryDefinitionCollectionPage directoryDefinitionCollectionPage = new DirectoryDefinitionCollectionPage(directoryDefinitionCollectionResponse, null);
synchronizationSchema.directories = directoryDefinitionCollectionPage;
LinkedList<SynchronizationRule> synchronizationRulesList = new LinkedList<SynchronizationRule>();
SynchronizationRule synchronizationRules = new SynchronizationRule();
ContainerFilter containerFilter = new ContainerFilter();
LinkedList<String> includedContainersList = new LinkedList<String>();
includedContainersList.add("OU=In-Scope OU 1,DC=contoso,DC=com");
includedContainersList.add("OU=In-Scope OU 2,DC=contoso,DC=com");
containerFilter.includedContainers = includedContainersList;
synchronizationRules.containerFilter = containerFilter;
GroupFilter groupFilter = new GroupFilter();
LinkedList<String> includedGroupsList = new LinkedList<String>();
groupFilter.includedGroups = includedGroupsList;
synchronizationRules.groupFilter = groupFilter;
synchronizationRules.name = "AD2AADProvisioning";
synchronizationRules.sourceDirectoryName = "Active Directory";
synchronizationRules.targetDirectoryName = "Azure Active Directory";
LinkedList<ObjectMapping> objectMappingsList = new LinkedList<ObjectMapping>();
ObjectMapping objectMappings = new ObjectMapping();
objectMappings.name = "Provision Active Directory users";
objectMappings.sourceObjectName = "user";
objectMappings.targetObjectName = "User";
LinkedList<AttributeMapping> attributeMappingsList = new LinkedList<AttributeMapping>();
AttributeMapping attributeMappings = new AttributeMapping();
AttributeMappingSource source = new AttributeMappingSource();
attributeMappings.source = source;
attributeMappings.targetAttributeName = "DisplayName";
attributeMappingsList.add(attributeMappings);
objectMappings.attributeMappings = attributeMappingsList;
objectMappingsList.add(objectMappings);
synchronizationRules.objectMappings = objectMappingsList;
synchronizationRulesList.add(synchronizationRules);
synchronizationSchema.synchronizationRules = synchronizationRulesList;

graphClient.servicePrincipals("{id}").synchronization().jobs("{jobId}").schema()
	.buildRequest()
	.put(synchronizationSchema);

```