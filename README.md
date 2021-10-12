# Usage

<!--- BEGIN_TF_DOCS --->
<!-- markdownlint-disable-file MD033 MD012 -->
# terraform-azurerm-easy-alerting-datafactory

LederWorks Terraform Azure Easy Alerting Data Factory module.

## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Resources

The following resources are used by this module:

- [azurerm_monitor_metric_alert.alert_datafactory-activity-runs-cancelled](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-activity-runs-failed](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-activity-runs-succeeded](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-integration-available-memory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-integration-available-node-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-integration-cpu-percentage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-integration-queue-duration](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-integration-queue-length](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-maximum-entities-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-maximum-factory-size-gb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-pipeline-runs-cancelled](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-pipeline-runs-elapsed-time](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-pipeline-runs-failed](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-pipeline-runs-succeeded](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-integration-start-cancelled](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-integration-start-failed](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-integration-start-succeeded](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-integration-stop-stucked](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-integration-stop-succeeded](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-package-cancelled](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-package-failed](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-ssis-package-succeeded](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-total-entities-count](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-total-factory-size-gb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-trigger-runs-cancelled](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-trigger-runs-failed](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)
- [azurerm_monitor_metric_alert.alert_datafactory-trigger-runs-succeeded](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_metric_alert) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_SubscriptionID"></a> [SubscriptionID](#input\_SubscriptionID)

Description: ID of the Subscription

Type: `any`

### <a name="input_Tags"></a> [Tags](#input\_Tags)

Description: BYO Tags, preferrable from a local on your side :D

Type: `map(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_DataFactoryAlertActivityRunsCancelledActionGroupIDs"></a> [DataFactoryAlertActivityRunsCancelledActionGroupIDs](#input\_DataFactoryAlertActivityRunsCancelledActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertActivityRunsCancelledActivityType"></a> [DataFactoryAlertActivityRunsCancelledActivityType](#input\_DataFactoryAlertActivityRunsCancelledActivityType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsCancelledAutoResolve"></a> [DataFactoryAlertActivityRunsCancelledAutoResolve](#input\_DataFactoryAlertActivityRunsCancelledAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertActivityRunsCancelledCreated"></a> [DataFactoryAlertActivityRunsCancelledCreated](#input\_DataFactoryAlertActivityRunsCancelledCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertActivityRunsCancelledEnabled"></a> [DataFactoryAlertActivityRunsCancelledEnabled](#input\_DataFactoryAlertActivityRunsCancelledEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertActivityRunsCancelledFailureType"></a> [DataFactoryAlertActivityRunsCancelledFailureType](#input\_DataFactoryAlertActivityRunsCancelledFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsCancelledFrequency"></a> [DataFactoryAlertActivityRunsCancelledFrequency](#input\_DataFactoryAlertActivityRunsCancelledFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertActivityRunsCancelledName"></a> [DataFactoryAlertActivityRunsCancelledName](#input\_DataFactoryAlertActivityRunsCancelledName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsCancelledPipelineName"></a> [DataFactoryAlertActivityRunsCancelledPipelineName](#input\_DataFactoryAlertActivityRunsCancelledPipelineName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsCancelledSeverity"></a> [DataFactoryAlertActivityRunsCancelledSeverity](#input\_DataFactoryAlertActivityRunsCancelledSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertActivityRunsCancelledThreshold"></a> [DataFactoryAlertActivityRunsCancelledThreshold](#input\_DataFactoryAlertActivityRunsCancelledThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertActivityRunsCancelledWindow"></a> [DataFactoryAlertActivityRunsCancelledWindow](#input\_DataFactoryAlertActivityRunsCancelledWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertActivityRunsFailedActionGroupIDs"></a> [DataFactoryAlertActivityRunsFailedActionGroupIDs](#input\_DataFactoryAlertActivityRunsFailedActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertActivityRunsFailedActivityType"></a> [DataFactoryAlertActivityRunsFailedActivityType](#input\_DataFactoryAlertActivityRunsFailedActivityType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsFailedAutoResolve"></a> [DataFactoryAlertActivityRunsFailedAutoResolve](#input\_DataFactoryAlertActivityRunsFailedAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertActivityRunsFailedCreated"></a> [DataFactoryAlertActivityRunsFailedCreated](#input\_DataFactoryAlertActivityRunsFailedCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertActivityRunsFailedEnabled"></a> [DataFactoryAlertActivityRunsFailedEnabled](#input\_DataFactoryAlertActivityRunsFailedEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertActivityRunsFailedFailureType"></a> [DataFactoryAlertActivityRunsFailedFailureType](#input\_DataFactoryAlertActivityRunsFailedFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsFailedFrequency"></a> [DataFactoryAlertActivityRunsFailedFrequency](#input\_DataFactoryAlertActivityRunsFailedFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertActivityRunsFailedName"></a> [DataFactoryAlertActivityRunsFailedName](#input\_DataFactoryAlertActivityRunsFailedName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsFailedPipelineName"></a> [DataFactoryAlertActivityRunsFailedPipelineName](#input\_DataFactoryAlertActivityRunsFailedPipelineName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsFailedSeverity"></a> [DataFactoryAlertActivityRunsFailedSeverity](#input\_DataFactoryAlertActivityRunsFailedSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertActivityRunsFailedThreshold"></a> [DataFactoryAlertActivityRunsFailedThreshold](#input\_DataFactoryAlertActivityRunsFailedThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertActivityRunsFailedWindow"></a> [DataFactoryAlertActivityRunsFailedWindow](#input\_DataFactoryAlertActivityRunsFailedWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertActivityRunsSucceededActionGroupIDs"></a> [DataFactoryAlertActivityRunsSucceededActionGroupIDs](#input\_DataFactoryAlertActivityRunsSucceededActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertActivityRunsSucceededActivityType"></a> [DataFactoryAlertActivityRunsSucceededActivityType](#input\_DataFactoryAlertActivityRunsSucceededActivityType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsSucceededAutoResolve"></a> [DataFactoryAlertActivityRunsSucceededAutoResolve](#input\_DataFactoryAlertActivityRunsSucceededAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertActivityRunsSucceededCreated"></a> [DataFactoryAlertActivityRunsSucceededCreated](#input\_DataFactoryAlertActivityRunsSucceededCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertActivityRunsSucceededEnabled"></a> [DataFactoryAlertActivityRunsSucceededEnabled](#input\_DataFactoryAlertActivityRunsSucceededEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertActivityRunsSucceededFailureType"></a> [DataFactoryAlertActivityRunsSucceededFailureType](#input\_DataFactoryAlertActivityRunsSucceededFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsSucceededFrequency"></a> [DataFactoryAlertActivityRunsSucceededFrequency](#input\_DataFactoryAlertActivityRunsSucceededFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertActivityRunsSucceededName"></a> [DataFactoryAlertActivityRunsSucceededName](#input\_DataFactoryAlertActivityRunsSucceededName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsSucceededPipelineName"></a> [DataFactoryAlertActivityRunsSucceededPipelineName](#input\_DataFactoryAlertActivityRunsSucceededPipelineName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertActivityRunsSucceededSeverity"></a> [DataFactoryAlertActivityRunsSucceededSeverity](#input\_DataFactoryAlertActivityRunsSucceededSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertActivityRunsSucceededThreshold"></a> [DataFactoryAlertActivityRunsSucceededThreshold](#input\_DataFactoryAlertActivityRunsSucceededThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertActivityRunsSucceededWindow"></a> [DataFactoryAlertActivityRunsSucceededWindow](#input\_DataFactoryAlertActivityRunsSucceededWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryActionGroupIDs"></a> [DataFactoryAlertIntegrationAvailableMemoryActionGroupIDs](#input\_DataFactoryAlertIntegrationAvailableMemoryActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryAutoResolve"></a> [DataFactoryAlertIntegrationAvailableMemoryAutoResolve](#input\_DataFactoryAlertIntegrationAvailableMemoryAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryCreated"></a> [DataFactoryAlertIntegrationAvailableMemoryCreated](#input\_DataFactoryAlertIntegrationAvailableMemoryCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryEnabled"></a> [DataFactoryAlertIntegrationAvailableMemoryEnabled](#input\_DataFactoryAlertIntegrationAvailableMemoryEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryFrequency"></a> [DataFactoryAlertIntegrationAvailableMemoryFrequency](#input\_DataFactoryAlertIntegrationAvailableMemoryFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryIntegrationNames"></a> [DataFactoryAlertIntegrationAvailableMemoryIntegrationNames](#input\_DataFactoryAlertIntegrationAvailableMemoryIntegrationNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryNodeNames"></a> [DataFactoryAlertIntegrationAvailableMemoryNodeNames](#input\_DataFactoryAlertIntegrationAvailableMemoryNodeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationAvailableMemorySeverity"></a> [DataFactoryAlertIntegrationAvailableMemorySeverity](#input\_DataFactoryAlertIntegrationAvailableMemorySeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryThreshold"></a> [DataFactoryAlertIntegrationAvailableMemoryThreshold](#input\_DataFactoryAlertIntegrationAvailableMemoryThreshold)

Description: n/a

Type: `number`

Default: `1000000000`

### <a name="input_DataFactoryAlertIntegrationAvailableMemoryWindow"></a> [DataFactoryAlertIntegrationAvailableMemoryWindow](#input\_DataFactoryAlertIntegrationAvailableMemoryWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountActionGroupIDs"></a> [DataFactoryAlertIntegrationAvailableNodeCountActionGroupIDs](#input\_DataFactoryAlertIntegrationAvailableNodeCountActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountAutoResolve"></a> [DataFactoryAlertIntegrationAvailableNodeCountAutoResolve](#input\_DataFactoryAlertIntegrationAvailableNodeCountAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountCreated"></a> [DataFactoryAlertIntegrationAvailableNodeCountCreated](#input\_DataFactoryAlertIntegrationAvailableNodeCountCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountEnabled"></a> [DataFactoryAlertIntegrationAvailableNodeCountEnabled](#input\_DataFactoryAlertIntegrationAvailableNodeCountEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountFrequency"></a> [DataFactoryAlertIntegrationAvailableNodeCountFrequency](#input\_DataFactoryAlertIntegrationAvailableNodeCountFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountIntegrationNames"></a> [DataFactoryAlertIntegrationAvailableNodeCountIntegrationNames](#input\_DataFactoryAlertIntegrationAvailableNodeCountIntegrationNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountSeverity"></a> [DataFactoryAlertIntegrationAvailableNodeCountSeverity](#input\_DataFactoryAlertIntegrationAvailableNodeCountSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountThreshold"></a> [DataFactoryAlertIntegrationAvailableNodeCountThreshold](#input\_DataFactoryAlertIntegrationAvailableNodeCountThreshold)

Description: n/a

Type: `number`

Default: `1000000000`

### <a name="input_DataFactoryAlertIntegrationAvailableNodeCountWindow"></a> [DataFactoryAlertIntegrationAvailableNodeCountWindow](#input\_DataFactoryAlertIntegrationAvailableNodeCountWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageActionGroupIDs"></a> [DataFactoryAlertIntegrationCPUPercentageActionGroupIDs](#input\_DataFactoryAlertIntegrationCPUPercentageActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageAutoResolve"></a> [DataFactoryAlertIntegrationCPUPercentageAutoResolve](#input\_DataFactoryAlertIntegrationCPUPercentageAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageCreated"></a> [DataFactoryAlertIntegrationCPUPercentageCreated](#input\_DataFactoryAlertIntegrationCPUPercentageCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageEnabled"></a> [DataFactoryAlertIntegrationCPUPercentageEnabled](#input\_DataFactoryAlertIntegrationCPUPercentageEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageFrequency"></a> [DataFactoryAlertIntegrationCPUPercentageFrequency](#input\_DataFactoryAlertIntegrationCPUPercentageFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageIntegrationNames"></a> [DataFactoryAlertIntegrationCPUPercentageIntegrationNames](#input\_DataFactoryAlertIntegrationCPUPercentageIntegrationNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationCPUPercentageNodeNames"></a> [DataFactoryAlertIntegrationCPUPercentageNodeNames](#input\_DataFactoryAlertIntegrationCPUPercentageNodeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationCPUPercentageSeverity"></a> [DataFactoryAlertIntegrationCPUPercentageSeverity](#input\_DataFactoryAlertIntegrationCPUPercentageSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageThreshold"></a> [DataFactoryAlertIntegrationCPUPercentageThreshold](#input\_DataFactoryAlertIntegrationCPUPercentageThreshold)

Description: n/a

Type: `number`

Default: `95`

### <a name="input_DataFactoryAlertIntegrationCPUPercentageWindow"></a> [DataFactoryAlertIntegrationCPUPercentageWindow](#input\_DataFactoryAlertIntegrationCPUPercentageWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertIntegrationQueueDurationActionGroupIDs"></a> [DataFactoryAlertIntegrationQueueDurationActionGroupIDs](#input\_DataFactoryAlertIntegrationQueueDurationActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertIntegrationQueueDurationAutoResolve"></a> [DataFactoryAlertIntegrationQueueDurationAutoResolve](#input\_DataFactoryAlertIntegrationQueueDurationAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationQueueDurationCreated"></a> [DataFactoryAlertIntegrationQueueDurationCreated](#input\_DataFactoryAlertIntegrationQueueDurationCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertIntegrationQueueDurationEnabled"></a> [DataFactoryAlertIntegrationQueueDurationEnabled](#input\_DataFactoryAlertIntegrationQueueDurationEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationQueueDurationFrequency"></a> [DataFactoryAlertIntegrationQueueDurationFrequency](#input\_DataFactoryAlertIntegrationQueueDurationFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertIntegrationQueueDurationIntegrationNames"></a> [DataFactoryAlertIntegrationQueueDurationIntegrationNames](#input\_DataFactoryAlertIntegrationQueueDurationIntegrationNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationQueueDurationSeverity"></a> [DataFactoryAlertIntegrationQueueDurationSeverity](#input\_DataFactoryAlertIntegrationQueueDurationSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertIntegrationQueueDurationThreshold"></a> [DataFactoryAlertIntegrationQueueDurationThreshold](#input\_DataFactoryAlertIntegrationQueueDurationThreshold)

Description: n/a

Type: `number`

Default: `60`

### <a name="input_DataFactoryAlertIntegrationQueueDurationWindow"></a> [DataFactoryAlertIntegrationQueueDurationWindow](#input\_DataFactoryAlertIntegrationQueueDurationWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertIntegrationQueueLengthActionGroupIDs"></a> [DataFactoryAlertIntegrationQueueLengthActionGroupIDs](#input\_DataFactoryAlertIntegrationQueueLengthActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertIntegrationQueueLengthAutoResolve"></a> [DataFactoryAlertIntegrationQueueLengthAutoResolve](#input\_DataFactoryAlertIntegrationQueueLengthAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationQueueLengthCreated"></a> [DataFactoryAlertIntegrationQueueLengthCreated](#input\_DataFactoryAlertIntegrationQueueLengthCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertIntegrationQueueLengthEnabled"></a> [DataFactoryAlertIntegrationQueueLengthEnabled](#input\_DataFactoryAlertIntegrationQueueLengthEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertIntegrationQueueLengthFrequency"></a> [DataFactoryAlertIntegrationQueueLengthFrequency](#input\_DataFactoryAlertIntegrationQueueLengthFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertIntegrationQueueLengthIntegrationNames"></a> [DataFactoryAlertIntegrationQueueLengthIntegrationNames](#input\_DataFactoryAlertIntegrationQueueLengthIntegrationNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertIntegrationQueueLengthSeverity"></a> [DataFactoryAlertIntegrationQueueLengthSeverity](#input\_DataFactoryAlertIntegrationQueueLengthSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertIntegrationQueueLengthThreshold"></a> [DataFactoryAlertIntegrationQueueLengthThreshold](#input\_DataFactoryAlertIntegrationQueueLengthThreshold)

Description: n/a

Type: `number`

Default: `10`

### <a name="input_DataFactoryAlertIntegrationQueueLengthWindow"></a> [DataFactoryAlertIntegrationQueueLengthWindow](#input\_DataFactoryAlertIntegrationQueueLengthWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertMaximumEntitiesCountActionGroupIDs"></a> [DataFactoryAlertMaximumEntitiesCountActionGroupIDs](#input\_DataFactoryAlertMaximumEntitiesCountActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertMaximumEntitiesCountAutoResolve"></a> [DataFactoryAlertMaximumEntitiesCountAutoResolve](#input\_DataFactoryAlertMaximumEntitiesCountAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertMaximumEntitiesCountCreated"></a> [DataFactoryAlertMaximumEntitiesCountCreated](#input\_DataFactoryAlertMaximumEntitiesCountCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertMaximumEntitiesCountEnabled"></a> [DataFactoryAlertMaximumEntitiesCountEnabled](#input\_DataFactoryAlertMaximumEntitiesCountEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertMaximumEntitiesCountFrequency"></a> [DataFactoryAlertMaximumEntitiesCountFrequency](#input\_DataFactoryAlertMaximumEntitiesCountFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertMaximumEntitiesCountSeverity"></a> [DataFactoryAlertMaximumEntitiesCountSeverity](#input\_DataFactoryAlertMaximumEntitiesCountSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertMaximumEntitiesCountThreshold"></a> [DataFactoryAlertMaximumEntitiesCountThreshold](#input\_DataFactoryAlertMaximumEntitiesCountThreshold)

Description: n/a

Type: `number`

Default: `1000`

### <a name="input_DataFactoryAlertMaximumEntitiesCountWindow"></a> [DataFactoryAlertMaximumEntitiesCountWindow](#input\_DataFactoryAlertMaximumEntitiesCountWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBActionGroupIDs"></a> [DataFactoryAlertMaximumFactorySizeGBActionGroupIDs](#input\_DataFactoryAlertMaximumFactorySizeGBActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBAutoResolve"></a> [DataFactoryAlertMaximumFactorySizeGBAutoResolve](#input\_DataFactoryAlertMaximumFactorySizeGBAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBCreated"></a> [DataFactoryAlertMaximumFactorySizeGBCreated](#input\_DataFactoryAlertMaximumFactorySizeGBCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBEnabled"></a> [DataFactoryAlertMaximumFactorySizeGBEnabled](#input\_DataFactoryAlertMaximumFactorySizeGBEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBFrequency"></a> [DataFactoryAlertMaximumFactorySizeGBFrequency](#input\_DataFactoryAlertMaximumFactorySizeGBFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBSeverity"></a> [DataFactoryAlertMaximumFactorySizeGBSeverity](#input\_DataFactoryAlertMaximumFactorySizeGBSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBThreshold"></a> [DataFactoryAlertMaximumFactorySizeGBThreshold](#input\_DataFactoryAlertMaximumFactorySizeGBThreshold)

Description: n/a

Type: `number`

Default: `10`

### <a name="input_DataFactoryAlertMaximumFactorySizeGBWindow"></a> [DataFactoryAlertMaximumFactorySizeGBWindow](#input\_DataFactoryAlertMaximumFactorySizeGBWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertPipelineRunsCancelledActionGroupIDs"></a> [DataFactoryAlertPipelineRunsCancelledActionGroupIDs](#input\_DataFactoryAlertPipelineRunsCancelledActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertPipelineRunsCancelledAutoResolve"></a> [DataFactoryAlertPipelineRunsCancelledAutoResolve](#input\_DataFactoryAlertPipelineRunsCancelledAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsCancelledCreated"></a> [DataFactoryAlertPipelineRunsCancelledCreated](#input\_DataFactoryAlertPipelineRunsCancelledCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertPipelineRunsCancelledEnabled"></a> [DataFactoryAlertPipelineRunsCancelledEnabled](#input\_DataFactoryAlertPipelineRunsCancelledEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsCancelledFailureType"></a> [DataFactoryAlertPipelineRunsCancelledFailureType](#input\_DataFactoryAlertPipelineRunsCancelledFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsCancelledFrequency"></a> [DataFactoryAlertPipelineRunsCancelledFrequency](#input\_DataFactoryAlertPipelineRunsCancelledFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertPipelineRunsCancelledName"></a> [DataFactoryAlertPipelineRunsCancelledName](#input\_DataFactoryAlertPipelineRunsCancelledName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsCancelledSeverity"></a> [DataFactoryAlertPipelineRunsCancelledSeverity](#input\_DataFactoryAlertPipelineRunsCancelledSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertPipelineRunsCancelledThreshold"></a> [DataFactoryAlertPipelineRunsCancelledThreshold](#input\_DataFactoryAlertPipelineRunsCancelledThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertPipelineRunsCancelledWindow"></a> [DataFactoryAlertPipelineRunsCancelledWindow](#input\_DataFactoryAlertPipelineRunsCancelledWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeActionGroupIDs"></a> [DataFactoryAlertPipelineRunsElapsedTimeActionGroupIDs](#input\_DataFactoryAlertPipelineRunsElapsedTimeActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeAutoResolve"></a> [DataFactoryAlertPipelineRunsElapsedTimeAutoResolve](#input\_DataFactoryAlertPipelineRunsElapsedTimeAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeCreated"></a> [DataFactoryAlertPipelineRunsElapsedTimeCreated](#input\_DataFactoryAlertPipelineRunsElapsedTimeCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeEnabled"></a> [DataFactoryAlertPipelineRunsElapsedTimeEnabled](#input\_DataFactoryAlertPipelineRunsElapsedTimeEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeFrequency"></a> [DataFactoryAlertPipelineRunsElapsedTimeFrequency](#input\_DataFactoryAlertPipelineRunsElapsedTimeFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeName"></a> [DataFactoryAlertPipelineRunsElapsedTimeName](#input\_DataFactoryAlertPipelineRunsElapsedTimeName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeRunID"></a> [DataFactoryAlertPipelineRunsElapsedTimeRunID](#input\_DataFactoryAlertPipelineRunsElapsedTimeRunID)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeSeverity"></a> [DataFactoryAlertPipelineRunsElapsedTimeSeverity](#input\_DataFactoryAlertPipelineRunsElapsedTimeSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeThreshold"></a> [DataFactoryAlertPipelineRunsElapsedTimeThreshold](#input\_DataFactoryAlertPipelineRunsElapsedTimeThreshold)

Description: n/a

Type: `number`

Default: `86400`

### <a name="input_DataFactoryAlertPipelineRunsElapsedTimeWindow"></a> [DataFactoryAlertPipelineRunsElapsedTimeWindow](#input\_DataFactoryAlertPipelineRunsElapsedTimeWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertPipelineRunsFailedActionGroupIDs"></a> [DataFactoryAlertPipelineRunsFailedActionGroupIDs](#input\_DataFactoryAlertPipelineRunsFailedActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertPipelineRunsFailedAutoResolve"></a> [DataFactoryAlertPipelineRunsFailedAutoResolve](#input\_DataFactoryAlertPipelineRunsFailedAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsFailedCreated"></a> [DataFactoryAlertPipelineRunsFailedCreated](#input\_DataFactoryAlertPipelineRunsFailedCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertPipelineRunsFailedEnabled"></a> [DataFactoryAlertPipelineRunsFailedEnabled](#input\_DataFactoryAlertPipelineRunsFailedEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsFailedFailureType"></a> [DataFactoryAlertPipelineRunsFailedFailureType](#input\_DataFactoryAlertPipelineRunsFailedFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsFailedFrequency"></a> [DataFactoryAlertPipelineRunsFailedFrequency](#input\_DataFactoryAlertPipelineRunsFailedFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertPipelineRunsFailedName"></a> [DataFactoryAlertPipelineRunsFailedName](#input\_DataFactoryAlertPipelineRunsFailedName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsFailedSeverity"></a> [DataFactoryAlertPipelineRunsFailedSeverity](#input\_DataFactoryAlertPipelineRunsFailedSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertPipelineRunsFailedThreshold"></a> [DataFactoryAlertPipelineRunsFailedThreshold](#input\_DataFactoryAlertPipelineRunsFailedThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertPipelineRunsFailedWindow"></a> [DataFactoryAlertPipelineRunsFailedWindow](#input\_DataFactoryAlertPipelineRunsFailedWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertPipelineRunsSucceededActionGroupIDs"></a> [DataFactoryAlertPipelineRunsSucceededActionGroupIDs](#input\_DataFactoryAlertPipelineRunsSucceededActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertPipelineRunsSucceededAutoResolve"></a> [DataFactoryAlertPipelineRunsSucceededAutoResolve](#input\_DataFactoryAlertPipelineRunsSucceededAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsSucceededCreated"></a> [DataFactoryAlertPipelineRunsSucceededCreated](#input\_DataFactoryAlertPipelineRunsSucceededCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertPipelineRunsSucceededEnabled"></a> [DataFactoryAlertPipelineRunsSucceededEnabled](#input\_DataFactoryAlertPipelineRunsSucceededEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertPipelineRunsSucceededFailureType"></a> [DataFactoryAlertPipelineRunsSucceededFailureType](#input\_DataFactoryAlertPipelineRunsSucceededFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsSucceededFrequency"></a> [DataFactoryAlertPipelineRunsSucceededFrequency](#input\_DataFactoryAlertPipelineRunsSucceededFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertPipelineRunsSucceededName"></a> [DataFactoryAlertPipelineRunsSucceededName](#input\_DataFactoryAlertPipelineRunsSucceededName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertPipelineRunsSucceededSeverity"></a> [DataFactoryAlertPipelineRunsSucceededSeverity](#input\_DataFactoryAlertPipelineRunsSucceededSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertPipelineRunsSucceededThreshold"></a> [DataFactoryAlertPipelineRunsSucceededThreshold](#input\_DataFactoryAlertPipelineRunsSucceededThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertPipelineRunsSucceededWindow"></a> [DataFactoryAlertPipelineRunsSucceededWindow](#input\_DataFactoryAlertPipelineRunsSucceededWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledActionGroupIDs"></a> [DataFactoryAlertSSISIntegrationStartCancelledActionGroupIDs](#input\_DataFactoryAlertSSISIntegrationStartCancelledActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledAutoResolve"></a> [DataFactoryAlertSSISIntegrationStartCancelledAutoResolve](#input\_DataFactoryAlertSSISIntegrationStartCancelledAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledCreated"></a> [DataFactoryAlertSSISIntegrationStartCancelledCreated](#input\_DataFactoryAlertSSISIntegrationStartCancelledCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledEnabled"></a> [DataFactoryAlertSSISIntegrationStartCancelledEnabled](#input\_DataFactoryAlertSSISIntegrationStartCancelledEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledFrequency"></a> [DataFactoryAlertSSISIntegrationStartCancelledFrequency](#input\_DataFactoryAlertSSISIntegrationStartCancelledFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledRuntimeNames"></a> [DataFactoryAlertSSISIntegrationStartCancelledRuntimeNames](#input\_DataFactoryAlertSSISIntegrationStartCancelledRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledSeverity"></a> [DataFactoryAlertSSISIntegrationStartCancelledSeverity](#input\_DataFactoryAlertSSISIntegrationStartCancelledSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledThreshold"></a> [DataFactoryAlertSSISIntegrationStartCancelledThreshold](#input\_DataFactoryAlertSSISIntegrationStartCancelledThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISIntegrationStartCancelledWindow"></a> [DataFactoryAlertSSISIntegrationStartCancelledWindow](#input\_DataFactoryAlertSSISIntegrationStartCancelledWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedActionGroupIDs"></a> [DataFactoryAlertSSISIntegrationStartFailedActionGroupIDs](#input\_DataFactoryAlertSSISIntegrationStartFailedActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedAutoResolve"></a> [DataFactoryAlertSSISIntegrationStartFailedAutoResolve](#input\_DataFactoryAlertSSISIntegrationStartFailedAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedCreated"></a> [DataFactoryAlertSSISIntegrationStartFailedCreated](#input\_DataFactoryAlertSSISIntegrationStartFailedCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedEnabled"></a> [DataFactoryAlertSSISIntegrationStartFailedEnabled](#input\_DataFactoryAlertSSISIntegrationStartFailedEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedFrequency"></a> [DataFactoryAlertSSISIntegrationStartFailedFrequency](#input\_DataFactoryAlertSSISIntegrationStartFailedFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedRuntimeNames"></a> [DataFactoryAlertSSISIntegrationStartFailedRuntimeNames](#input\_DataFactoryAlertSSISIntegrationStartFailedRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedSeverity"></a> [DataFactoryAlertSSISIntegrationStartFailedSeverity](#input\_DataFactoryAlertSSISIntegrationStartFailedSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedThreshold"></a> [DataFactoryAlertSSISIntegrationStartFailedThreshold](#input\_DataFactoryAlertSSISIntegrationStartFailedThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISIntegrationStartFailedWindow"></a> [DataFactoryAlertSSISIntegrationStartFailedWindow](#input\_DataFactoryAlertSSISIntegrationStartFailedWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededActionGroupIDs"></a> [DataFactoryAlertSSISIntegrationStartSucceededActionGroupIDs](#input\_DataFactoryAlertSSISIntegrationStartSucceededActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededAutoResolve"></a> [DataFactoryAlertSSISIntegrationStartSucceededAutoResolve](#input\_DataFactoryAlertSSISIntegrationStartSucceededAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededCreated"></a> [DataFactoryAlertSSISIntegrationStartSucceededCreated](#input\_DataFactoryAlertSSISIntegrationStartSucceededCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededEnabled"></a> [DataFactoryAlertSSISIntegrationStartSucceededEnabled](#input\_DataFactoryAlertSSISIntegrationStartSucceededEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededFrequency"></a> [DataFactoryAlertSSISIntegrationStartSucceededFrequency](#input\_DataFactoryAlertSSISIntegrationStartSucceededFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededRuntimeNames"></a> [DataFactoryAlertSSISIntegrationStartSucceededRuntimeNames](#input\_DataFactoryAlertSSISIntegrationStartSucceededRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededSeverity"></a> [DataFactoryAlertSSISIntegrationStartSucceededSeverity](#input\_DataFactoryAlertSSISIntegrationStartSucceededSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededThreshold"></a> [DataFactoryAlertSSISIntegrationStartSucceededThreshold](#input\_DataFactoryAlertSSISIntegrationStartSucceededThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISIntegrationStartSucceededWindow"></a> [DataFactoryAlertSSISIntegrationStartSucceededWindow](#input\_DataFactoryAlertSSISIntegrationStartSucceededWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedActionGroupIDs"></a> [DataFactoryAlertSSISIntegrationStopStuckedActionGroupIDs](#input\_DataFactoryAlertSSISIntegrationStopStuckedActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedAutoResolve"></a> [DataFactoryAlertSSISIntegrationStopStuckedAutoResolve](#input\_DataFactoryAlertSSISIntegrationStopStuckedAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedCreated"></a> [DataFactoryAlertSSISIntegrationStopStuckedCreated](#input\_DataFactoryAlertSSISIntegrationStopStuckedCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedEnabled"></a> [DataFactoryAlertSSISIntegrationStopStuckedEnabled](#input\_DataFactoryAlertSSISIntegrationStopStuckedEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedFrequency"></a> [DataFactoryAlertSSISIntegrationStopStuckedFrequency](#input\_DataFactoryAlertSSISIntegrationStopStuckedFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedRuntimeNames"></a> [DataFactoryAlertSSISIntegrationStopStuckedRuntimeNames](#input\_DataFactoryAlertSSISIntegrationStopStuckedRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedSeverity"></a> [DataFactoryAlertSSISIntegrationStopStuckedSeverity](#input\_DataFactoryAlertSSISIntegrationStopStuckedSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedThreshold"></a> [DataFactoryAlertSSISIntegrationStopStuckedThreshold](#input\_DataFactoryAlertSSISIntegrationStopStuckedThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISIntegrationStopStuckedWindow"></a> [DataFactoryAlertSSISIntegrationStopStuckedWindow](#input\_DataFactoryAlertSSISIntegrationStopStuckedWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededActionGroupIDs"></a> [DataFactoryAlertSSISIntegrationStopSucceededActionGroupIDs](#input\_DataFactoryAlertSSISIntegrationStopSucceededActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededAutoResolve"></a> [DataFactoryAlertSSISIntegrationStopSucceededAutoResolve](#input\_DataFactoryAlertSSISIntegrationStopSucceededAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededCreated"></a> [DataFactoryAlertSSISIntegrationStopSucceededCreated](#input\_DataFactoryAlertSSISIntegrationStopSucceededCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededEnabled"></a> [DataFactoryAlertSSISIntegrationStopSucceededEnabled](#input\_DataFactoryAlertSSISIntegrationStopSucceededEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededFrequency"></a> [DataFactoryAlertSSISIntegrationStopSucceededFrequency](#input\_DataFactoryAlertSSISIntegrationStopSucceededFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededRuntimeNames"></a> [DataFactoryAlertSSISIntegrationStopSucceededRuntimeNames](#input\_DataFactoryAlertSSISIntegrationStopSucceededRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededSeverity"></a> [DataFactoryAlertSSISIntegrationStopSucceededSeverity](#input\_DataFactoryAlertSSISIntegrationStopSucceededSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededThreshold"></a> [DataFactoryAlertSSISIntegrationStopSucceededThreshold](#input\_DataFactoryAlertSSISIntegrationStopSucceededThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISIntegrationStopSucceededWindow"></a> [DataFactoryAlertSSISIntegrationStopSucceededWindow](#input\_DataFactoryAlertSSISIntegrationStopSucceededWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISPackageCancelledActionGroupIDs"></a> [DataFactoryAlertSSISPackageCancelledActionGroupIDs](#input\_DataFactoryAlertSSISPackageCancelledActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISPackageCancelledAutoResolve"></a> [DataFactoryAlertSSISPackageCancelledAutoResolve](#input\_DataFactoryAlertSSISPackageCancelledAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISPackageCancelledCreated"></a> [DataFactoryAlertSSISPackageCancelledCreated](#input\_DataFactoryAlertSSISPackageCancelledCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISPackageCancelledEnabled"></a> [DataFactoryAlertSSISPackageCancelledEnabled](#input\_DataFactoryAlertSSISPackageCancelledEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISPackageCancelledFrequency"></a> [DataFactoryAlertSSISPackageCancelledFrequency](#input\_DataFactoryAlertSSISPackageCancelledFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISPackageCancelledRuntimeNames"></a> [DataFactoryAlertSSISPackageCancelledRuntimeNames](#input\_DataFactoryAlertSSISPackageCancelledRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISPackageCancelledSeverity"></a> [DataFactoryAlertSSISPackageCancelledSeverity](#input\_DataFactoryAlertSSISPackageCancelledSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISPackageCancelledThreshold"></a> [DataFactoryAlertSSISPackageCancelledThreshold](#input\_DataFactoryAlertSSISPackageCancelledThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISPackageCancelledWindow"></a> [DataFactoryAlertSSISPackageCancelledWindow](#input\_DataFactoryAlertSSISPackageCancelledWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISPackageFailedActionGroupIDs"></a> [DataFactoryAlertSSISPackageFailedActionGroupIDs](#input\_DataFactoryAlertSSISPackageFailedActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISPackageFailedAutoResolve"></a> [DataFactoryAlertSSISPackageFailedAutoResolve](#input\_DataFactoryAlertSSISPackageFailedAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISPackageFailedCreated"></a> [DataFactoryAlertSSISPackageFailedCreated](#input\_DataFactoryAlertSSISPackageFailedCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISPackageFailedEnabled"></a> [DataFactoryAlertSSISPackageFailedEnabled](#input\_DataFactoryAlertSSISPackageFailedEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISPackageFailedFrequency"></a> [DataFactoryAlertSSISPackageFailedFrequency](#input\_DataFactoryAlertSSISPackageFailedFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISPackageFailedRuntimeNames"></a> [DataFactoryAlertSSISPackageFailedRuntimeNames](#input\_DataFactoryAlertSSISPackageFailedRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISPackageFailedSeverity"></a> [DataFactoryAlertSSISPackageFailedSeverity](#input\_DataFactoryAlertSSISPackageFailedSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISPackageFailedThreshold"></a> [DataFactoryAlertSSISPackageFailedThreshold](#input\_DataFactoryAlertSSISPackageFailedThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISPackageFailedWindow"></a> [DataFactoryAlertSSISPackageFailedWindow](#input\_DataFactoryAlertSSISPackageFailedWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertSSISPackageSucceededActionGroupIDs"></a> [DataFactoryAlertSSISPackageSucceededActionGroupIDs](#input\_DataFactoryAlertSSISPackageSucceededActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertSSISPackageSucceededAutoResolve"></a> [DataFactoryAlertSSISPackageSucceededAutoResolve](#input\_DataFactoryAlertSSISPackageSucceededAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISPackageSucceededCreated"></a> [DataFactoryAlertSSISPackageSucceededCreated](#input\_DataFactoryAlertSSISPackageSucceededCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertSSISPackageSucceededEnabled"></a> [DataFactoryAlertSSISPackageSucceededEnabled](#input\_DataFactoryAlertSSISPackageSucceededEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertSSISPackageSucceededFrequency"></a> [DataFactoryAlertSSISPackageSucceededFrequency](#input\_DataFactoryAlertSSISPackageSucceededFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertSSISPackageSucceededRuntimeNames"></a> [DataFactoryAlertSSISPackageSucceededRuntimeNames](#input\_DataFactoryAlertSSISPackageSucceededRuntimeNames)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertSSISPackageSucceededSeverity"></a> [DataFactoryAlertSSISPackageSucceededSeverity](#input\_DataFactoryAlertSSISPackageSucceededSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertSSISPackageSucceededThreshold"></a> [DataFactoryAlertSSISPackageSucceededThreshold](#input\_DataFactoryAlertSSISPackageSucceededThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertSSISPackageSucceededWindow"></a> [DataFactoryAlertSSISPackageSucceededWindow](#input\_DataFactoryAlertSSISPackageSucceededWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertTotalEntitiesCountActionGroupIDs"></a> [DataFactoryAlertTotalEntitiesCountActionGroupIDs](#input\_DataFactoryAlertTotalEntitiesCountActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertTotalEntitiesCountAutoResolve"></a> [DataFactoryAlertTotalEntitiesCountAutoResolve](#input\_DataFactoryAlertTotalEntitiesCountAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTotalEntitiesCountCreated"></a> [DataFactoryAlertTotalEntitiesCountCreated](#input\_DataFactoryAlertTotalEntitiesCountCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertTotalEntitiesCountEnabled"></a> [DataFactoryAlertTotalEntitiesCountEnabled](#input\_DataFactoryAlertTotalEntitiesCountEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTotalEntitiesCountFrequency"></a> [DataFactoryAlertTotalEntitiesCountFrequency](#input\_DataFactoryAlertTotalEntitiesCountFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertTotalEntitiesCountSeverity"></a> [DataFactoryAlertTotalEntitiesCountSeverity](#input\_DataFactoryAlertTotalEntitiesCountSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertTotalEntitiesCountThreshold"></a> [DataFactoryAlertTotalEntitiesCountThreshold](#input\_DataFactoryAlertTotalEntitiesCountThreshold)

Description: n/a

Type: `number`

Default: `100`

### <a name="input_DataFactoryAlertTotalEntitiesCountWindow"></a> [DataFactoryAlertTotalEntitiesCountWindow](#input\_DataFactoryAlertTotalEntitiesCountWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertTotalFactorySizeGBActionGroupIDs"></a> [DataFactoryAlertTotalFactorySizeGBActionGroupIDs](#input\_DataFactoryAlertTotalFactorySizeGBActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertTotalFactorySizeGBAutoResolve"></a> [DataFactoryAlertTotalFactorySizeGBAutoResolve](#input\_DataFactoryAlertTotalFactorySizeGBAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTotalFactorySizeGBCreated"></a> [DataFactoryAlertTotalFactorySizeGBCreated](#input\_DataFactoryAlertTotalFactorySizeGBCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertTotalFactorySizeGBEnabled"></a> [DataFactoryAlertTotalFactorySizeGBEnabled](#input\_DataFactoryAlertTotalFactorySizeGBEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTotalFactorySizeGBFrequency"></a> [DataFactoryAlertTotalFactorySizeGBFrequency](#input\_DataFactoryAlertTotalFactorySizeGBFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertTotalFactorySizeGBSeverity"></a> [DataFactoryAlertTotalFactorySizeGBSeverity](#input\_DataFactoryAlertTotalFactorySizeGBSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertTotalFactorySizeGBThreshold"></a> [DataFactoryAlertTotalFactorySizeGBThreshold](#input\_DataFactoryAlertTotalFactorySizeGBThreshold)

Description: n/a

Type: `number`

Default: `1`

### <a name="input_DataFactoryAlertTotalFactorySizeGBWindow"></a> [DataFactoryAlertTotalFactorySizeGBWindow](#input\_DataFactoryAlertTotalFactorySizeGBWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertTriggerRunsCancelledActionGroupIDs"></a> [DataFactoryAlertTriggerRunsCancelledActionGroupIDs](#input\_DataFactoryAlertTriggerRunsCancelledActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertTriggerRunsCancelledAutoResolve"></a> [DataFactoryAlertTriggerRunsCancelledAutoResolve](#input\_DataFactoryAlertTriggerRunsCancelledAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTriggerRunsCancelledCreated"></a> [DataFactoryAlertTriggerRunsCancelledCreated](#input\_DataFactoryAlertTriggerRunsCancelledCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertTriggerRunsCancelledEnabled"></a> [DataFactoryAlertTriggerRunsCancelledEnabled](#input\_DataFactoryAlertTriggerRunsCancelledEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTriggerRunsCancelledFailureType"></a> [DataFactoryAlertTriggerRunsCancelledFailureType](#input\_DataFactoryAlertTriggerRunsCancelledFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertTriggerRunsCancelledFrequency"></a> [DataFactoryAlertTriggerRunsCancelledFrequency](#input\_DataFactoryAlertTriggerRunsCancelledFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertTriggerRunsCancelledName"></a> [DataFactoryAlertTriggerRunsCancelledName](#input\_DataFactoryAlertTriggerRunsCancelledName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertTriggerRunsCancelledSeverity"></a> [DataFactoryAlertTriggerRunsCancelledSeverity](#input\_DataFactoryAlertTriggerRunsCancelledSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertTriggerRunsCancelledThreshold"></a> [DataFactoryAlertTriggerRunsCancelledThreshold](#input\_DataFactoryAlertTriggerRunsCancelledThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertTriggerRunsCancelledWindow"></a> [DataFactoryAlertTriggerRunsCancelledWindow](#input\_DataFactoryAlertTriggerRunsCancelledWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertTriggerRunsFailedActionGroupIDs"></a> [DataFactoryAlertTriggerRunsFailedActionGroupIDs](#input\_DataFactoryAlertTriggerRunsFailedActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertTriggerRunsFailedAutoResolve"></a> [DataFactoryAlertTriggerRunsFailedAutoResolve](#input\_DataFactoryAlertTriggerRunsFailedAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTriggerRunsFailedCreated"></a> [DataFactoryAlertTriggerRunsFailedCreated](#input\_DataFactoryAlertTriggerRunsFailedCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertTriggerRunsFailedEnabled"></a> [DataFactoryAlertTriggerRunsFailedEnabled](#input\_DataFactoryAlertTriggerRunsFailedEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTriggerRunsFailedFailureType"></a> [DataFactoryAlertTriggerRunsFailedFailureType](#input\_DataFactoryAlertTriggerRunsFailedFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertTriggerRunsFailedFrequency"></a> [DataFactoryAlertTriggerRunsFailedFrequency](#input\_DataFactoryAlertTriggerRunsFailedFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertTriggerRunsFailedName"></a> [DataFactoryAlertTriggerRunsFailedName](#input\_DataFactoryAlertTriggerRunsFailedName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertTriggerRunsFailedSeverity"></a> [DataFactoryAlertTriggerRunsFailedSeverity](#input\_DataFactoryAlertTriggerRunsFailedSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertTriggerRunsFailedThreshold"></a> [DataFactoryAlertTriggerRunsFailedThreshold](#input\_DataFactoryAlertTriggerRunsFailedThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertTriggerRunsFailedWindow"></a> [DataFactoryAlertTriggerRunsFailedWindow](#input\_DataFactoryAlertTriggerRunsFailedWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryAlertTriggerRunsSucceededActionGroupIDs"></a> [DataFactoryAlertTriggerRunsSucceededActionGroupIDs](#input\_DataFactoryAlertTriggerRunsSucceededActionGroupIDs)

Description: n/a

Type: `set(string)`

Default: `[]`

### <a name="input_DataFactoryAlertTriggerRunsSucceededAutoResolve"></a> [DataFactoryAlertTriggerRunsSucceededAutoResolve](#input\_DataFactoryAlertTriggerRunsSucceededAutoResolve)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTriggerRunsSucceededCreated"></a> [DataFactoryAlertTriggerRunsSucceededCreated](#input\_DataFactoryAlertTriggerRunsSucceededCreated)

Description: n/a

Type: `bool`

Default: `false`

### <a name="input_DataFactoryAlertTriggerRunsSucceededEnabled"></a> [DataFactoryAlertTriggerRunsSucceededEnabled](#input\_DataFactoryAlertTriggerRunsSucceededEnabled)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_DataFactoryAlertTriggerRunsSucceededFailureType"></a> [DataFactoryAlertTriggerRunsSucceededFailureType](#input\_DataFactoryAlertTriggerRunsSucceededFailureType)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertTriggerRunsSucceededFrequency"></a> [DataFactoryAlertTriggerRunsSucceededFrequency](#input\_DataFactoryAlertTriggerRunsSucceededFrequency)

Description: The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are PT1M, PT5M, PT15M, PT30M and PT1H. Defaults to PT1M.

Type: `string`

Default: `"PT1M"`

### <a name="input_DataFactoryAlertTriggerRunsSucceededName"></a> [DataFactoryAlertTriggerRunsSucceededName](#input\_DataFactoryAlertTriggerRunsSucceededName)

Description: n/a

Type: `list(string)`

Default:

```json
[
  "*"
]
```

### <a name="input_DataFactoryAlertTriggerRunsSucceededSeverity"></a> [DataFactoryAlertTriggerRunsSucceededSeverity](#input\_DataFactoryAlertTriggerRunsSucceededSeverity)

Description: The severity of this Metric Alert. Possible values are 0, 1, 2, 3 and 4. Defaults to 3.

Type: `number`

Default: `3`

### <a name="input_DataFactoryAlertTriggerRunsSucceededThreshold"></a> [DataFactoryAlertTriggerRunsSucceededThreshold](#input\_DataFactoryAlertTriggerRunsSucceededThreshold)

Description: n/a

Type: `number`

Default: `0`

### <a name="input_DataFactoryAlertTriggerRunsSucceededWindow"></a> [DataFactoryAlertTriggerRunsSucceededWindow](#input\_DataFactoryAlertTriggerRunsSucceededWindow)

Description: The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than frequency. Possible values are PT1M, PT5M, PT15M, PT30M, PT1H, PT6H, PT12H and P1D. Defaults to frequency.

Type: `string`

Default: `null`

### <a name="input_DataFactoryName"></a> [DataFactoryName](#input\_DataFactoryName)

Description: DataFactory name

Type: `any`

Default: `null`

### <a name="input_DataFactoryResourceGroupObject"></a> [DataFactoryResourceGroupObject](#input\_DataFactoryResourceGroupObject)

Description: DataFactory resource group

Type: `any`

Default: `null`

## Outputs

No outputs.

## Contributing

* If you think you've found a bug in the code or you have a question regarding
  the usage of this module, please reach out to us by opening an issue in
  this GitHub repository.
* Contributions to this project are welcome: if you want to add a feature or a
  fix a bug, please do so by opening a Pull Request in this GitHub repository.
  In case of feature contribution, we kindly ask you to open an issue to
  discuss it beforehand.

## License & Authors

Author: Bence Bánó (@Ledermayer)

```text
MIT License

Copyright (c) 2021 LederWorks

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

<!--- END_TF_DOCS --->

