#### Data Factory Alerts ####


###############################################
################ Activity Runs ################
###############################################

#################################
#### Activity Runs Cancelled ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-activity-runs-cancelled" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertActivityRunsCancelledCreated == true ? 1 : 0
  name                = "DataFactory_Activity_Runs_Cancelled"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Activity Runs Cancelled"
  severity            = var.DataFactoryAlertActivityRunsCancelledSeverity
  enabled             = var.DataFactoryAlertActivityRunsCancelledEnabled
  frequency           = var.DataFactoryAlertActivityRunsCancelledFrequency
  window_size         = coalesce(var.DataFactoryAlertActivityRunsCancelledWindow, var.DataFactoryAlertActivityRunsCancelledFrequency)
  auto_mitigate       = var.DataFactoryAlertActivityRunsCancelledAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "ActivityCancelledRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertActivityRunsCancelledThreshold

    dimension {
      name     = "ActivityType"
      operator = "Include"
      values   = var.DataFactoryAlertActivityRunsCancelledActivityType
    }

    dimension {
        name     = "PipelineName"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsCancelledPipelineName
    }

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsCancelledFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsCancelledName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertActivityRunsCancelledActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}


##############################
#### Activity Runs Failed ####
##############################

resource "azurerm_monitor_metric_alert" "alert_datafactory-activity-runs-failed" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertActivityRunsFailedCreated == true ? 1 : 0
  name                = "DataFactory_Activity_Runs_Failed"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Activity Runs Failed"
  severity            = var.DataFactoryAlertActivityRunsFailedSeverity
  enabled             = var.DataFactoryAlertActivityRunsFailedEnabled
  frequency           = var.DataFactoryAlertActivityRunsFailedFrequency
  window_size         = coalesce(var.DataFactoryAlertActivityRunsFailedWindow, var.DataFactoryAlertActivityRunsFailedFrequency)
  auto_mitigate       = var.DataFactoryAlertActivityRunsFailedAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "ActivityFailedRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertActivityRunsFailedThreshold

    dimension {
      name     = "ActivityType"
      operator = "Include"
      values   = var.DataFactoryAlertActivityRunsFailedActivityType
    }

    dimension {
        name     = "PipelineName"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsFailedPipelineName
    }

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsFailedFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsFailedName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertActivityRunsFailedActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}


#################################
#### Activity Runs Succeeded ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-activity-runs-succeeded" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertActivityRunsSucceededCreated == true ? 1 : 0
  name                = "DataFactory_Activity_Runs_Succeeded"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Activity Runs Succeeded"
  severity            = var.DataFactoryAlertActivityRunsSucceededSeverity
  enabled             = var.DataFactoryAlertActivityRunsSucceededEnabled
  frequency           = var.DataFactoryAlertActivityRunsSucceededFrequency
  window_size         = coalesce(var.DataFactoryAlertActivityRunsSucceededWindow, var.DataFactoryAlertActivityRunsSucceededFrequency)
  auto_mitigate       = var.DataFactoryAlertActivityRunsSucceededAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "ActivitySucceededRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertActivityRunsSucceededThreshold

    dimension {
      name     = "ActivityType"
      operator = "Include"
      values   = var.DataFactoryAlertActivityRunsSucceededActivityType
    }

    dimension {
        name     = "PipelineName"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsSucceededPipelineName
    }

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsSucceededFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertActivityRunsSucceededName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertActivityRunsSucceededActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}


###############################################
################ Trigger Runs ################
###############################################

#################################
#### Trigger Runs Cancelled ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-trigger-runs-cancelled" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertTriggerRunsCancelledCreated == true ? 1 : 0
  name                = "DataFactory_Trigger_Runs_Cancelled"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Trigger Runs Cancelled"
  severity            = var.DataFactoryAlertTriggerRunsCancelledSeverity
  enabled             = var.DataFactoryAlertTriggerRunsCancelledEnabled
  frequency           = var.DataFactoryAlertTriggerRunsCancelledFrequency
  window_size         = coalesce(var.DataFactoryAlertTriggerRunsCancelledWindow, var.DataFactoryAlertTriggerRunsCancelledFrequency)
  auto_mitigate       = var.DataFactoryAlertTriggerRunsCancelledAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "TriggerCancelledRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertTriggerRunsCancelledThreshold

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertTriggerRunsCancelledFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertTriggerRunsCancelledName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertTriggerRunsCancelledActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}


##############################
#### Trigger Runs Failed ####
##############################

resource "azurerm_monitor_metric_alert" "alert_datafactory-trigger-runs-failed" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertTriggerRunsFailedCreated == true ? 1 : 0
  name                = "DataFactory_Trigger_Runs_Failed"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Trigger Runs Failed"
  severity            = var.DataFactoryAlertTriggerRunsFailedSeverity
  enabled             = var.DataFactoryAlertTriggerRunsFailedEnabled
  frequency           = var.DataFactoryAlertTriggerRunsFailedFrequency
  window_size         = coalesce(var.DataFactoryAlertTriggerRunsFailedWindow, var.DataFactoryAlertTriggerRunsFailedFrequency)
  auto_mitigate       = var.DataFactoryAlertTriggerRunsFailedAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "TriggerFailedRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertTriggerRunsFailedThreshold

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertTriggerRunsFailedFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertTriggerRunsFailedName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertTriggerRunsFailedActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}


#################################
#### Trigger Runs Succeeded ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-trigger-runs-succeeded" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertTriggerRunsSucceededCreated == true ? 1 : 0
  name                = "DataFactory_Trigger_Runs_Succeeded"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Trigger Runs Succeeded"
  severity            = var.DataFactoryAlertTriggerRunsSucceededSeverity
  enabled             = var.DataFactoryAlertTriggerRunsSucceededEnabled
  frequency           = var.DataFactoryAlertTriggerRunsSucceededFrequency
  window_size         = coalesce(var.DataFactoryAlertTriggerRunsSucceededWindow, var.DataFactoryAlertTriggerRunsSucceededFrequency)
  auto_mitigate       = var.DataFactoryAlertTriggerRunsSucceededAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "TriggerSucceededRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertTriggerRunsSucceededThreshold

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertTriggerRunsSucceededFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertTriggerRunsSucceededName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertTriggerRunsSucceededActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

###############################################
################ Pipeline Runs ################
###############################################

#################################
#### Pipeline Runs Cancelled ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-pipeline-runs-cancelled" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertPipelineRunsCancelledCreated == true ? 1 : 0
  name                = "DataFactory_Pipeline_Runs_Cancelled"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Pipeline Runs Cancelled"
  severity            = var.DataFactoryAlertPipelineRunsCancelledSeverity
  enabled             = var.DataFactoryAlertPipelineRunsCancelledEnabled
  frequency           = var.DataFactoryAlertPipelineRunsCancelledFrequency
  window_size         = coalesce(var.DataFactoryAlertPipelineRunsCancelledWindow, var.DataFactoryAlertPipelineRunsCancelledFrequency)
  auto_mitigate       = var.DataFactoryAlertPipelineRunsCancelledAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "PipelineCancelledRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertPipelineRunsCancelledThreshold

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsCancelledFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsCancelledName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertPipelineRunsCancelledActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##############################
#### Pipeline Runs Failed ####
##############################

resource "azurerm_monitor_metric_alert" "alert_datafactory-pipeline-runs-failed" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertPipelineRunsFailedCreated == true ? 1 : 0
  name                = "DataFactory_Pipeline_Runs_Failed"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Pipeline Runs Failed"
  severity            = var.DataFactoryAlertPipelineRunsFailedSeverity
  enabled             = var.DataFactoryAlertPipelineRunsFailedEnabled
  frequency           = var.DataFactoryAlertPipelineRunsFailedFrequency
  window_size         = coalesce(var.DataFactoryAlertPipelineRunsFailedWindow, var.DataFactoryAlertPipelineRunsFailedFrequency)
  auto_mitigate       = var.DataFactoryAlertPipelineRunsFailedAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "PipelineFailedRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertPipelineRunsFailedThreshold

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsFailedFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsFailedName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertPipelineRunsFailedActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#################################
#### Pipeline Runs Succeeded ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-pipeline-runs-succeeded" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertPipelineRunsSucceededCreated == true ? 1 : 0
  name                = "DataFactory_Pipeline_Runs_Succeeded"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Pipeline Runs Succeeded"
  severity            = var.DataFactoryAlertPipelineRunsSucceededSeverity
  enabled             = var.DataFactoryAlertPipelineRunsSucceededEnabled
  frequency           = var.DataFactoryAlertPipelineRunsSucceededFrequency
  window_size         = coalesce(var.DataFactoryAlertPipelineRunsSucceededWindow, var.DataFactoryAlertPipelineRunsSucceededFrequency)
  auto_mitigate       = var.DataFactoryAlertPipelineRunsSucceededAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "PipelineSucceededRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertPipelineRunsSucceededThreshold

    dimension {
        name     = "FailureType"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsSucceededFailureType
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsSucceededName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertPipelineRunsSucceededActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

####################################
#### Pipeline Runs Elapsed Time ####
####################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-pipeline-runs-elapsed-time" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertPipelineRunsElapsedTimeCreated == true ? 1 : 0
  name                = "DataFactory_Pipeline_Runs_Elapsed_Time"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Pipeline Runs Elapsed Time"
  severity            = var.DataFactoryAlertPipelineRunsElapsedTimeSeverity
  enabled             = var.DataFactoryAlertPipelineRunsElapsedTimeEnabled
  frequency           = var.DataFactoryAlertPipelineRunsElapsedTimeFrequency
  window_size         = coalesce(var.DataFactoryAlertPipelineRunsElapsedTimeWindow, var.DataFactoryAlertPipelineRunsElapsedTimeFrequency)
  auto_mitigate       = var.DataFactoryAlertPipelineRunsElapsedTimeAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "PipelineElapsedTimeRuns"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertPipelineRunsElapsedTimeThreshold

    dimension {
        name     = "RunId"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsElapsedTimeRunID
    }

    dimension {
        name     = "Name"
        operator = "Include"
        values   = var.DataFactoryAlertPipelineRunsElapsedTimeName
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertPipelineRunsElapsedTimeActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#############################################
################ Integration ################
#############################################

##########################################
#### Integration Available Memory (B) ####
##########################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-integration-available-memory" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertIntegrationAvailableMemoryCreated == true ? 1 : 0
  name                = "DataFactory_Integration_Available_Memory"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Integration Available Memory (B)"
  severity            = var.DataFactoryAlertIntegrationAvailableMemorySeverity
  enabled             = var.DataFactoryAlertIntegrationAvailableMemoryEnabled
  frequency           = var.DataFactoryAlertIntegrationAvailableMemoryFrequency
  window_size         = coalesce(var.DataFactoryAlertIntegrationAvailableMemoryWindow, var.DataFactoryAlertIntegrationAvailableMemoryFrequency)
  auto_mitigate       = var.DataFactoryAlertIntegrationAvailableMemoryAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "IntegrationRuntimeAvailableMemory"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertIntegrationAvailableMemoryThreshold

    dimension {
      name     = "IntegrationRuntimeName"
      operator = "Include"
      values   = var.DataFactoryAlertIntegrationAvailableMemoryIntegrationNames
    }

    dimension {
        name     = "NodeName"
        operator = "Include"
        values   = var.DataFactoryAlertIntegrationAvailableMemoryNodeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertIntegrationAvailableMemoryActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##########################################
#### Integration Available Node Count ####
##########################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-integration-available-node-count" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertIntegrationAvailableNodeCountCreated == true ? 1 : 0
  name                = "DataFactory_Integration_Available_Node_Count"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Integration Available Node Count"
  severity            = var.DataFactoryAlertIntegrationAvailableNodeCountSeverity
  enabled             = var.DataFactoryAlertIntegrationAvailableNodeCountEnabled
  frequency           = var.DataFactoryAlertIntegrationAvailableNodeCountFrequency
  window_size         = coalesce(var.DataFactoryAlertIntegrationAvailableNodeCountWindow, var.DataFactoryAlertIntegrationAvailableNodeCountFrequency)
  auto_mitigate       = var.DataFactoryAlertIntegrationAvailableNodeCountAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "IntegrationRuntimeAvailableNodeNumber"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertIntegrationAvailableNodeCountThreshold

    dimension {
      name     = "IntegrationRuntimeName"
      operator = "Include"
      values   = var.DataFactoryAlertIntegrationAvailableNodeCountIntegrationNames
    }

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertIntegrationAvailableNodeCountActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

####################################
#### Integration Queue Duration ####
####################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-integration-queue-duration" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertIntegrationQueueDurationCreated == true ? 1 : 0
  name                = "DataFactory_Integration_Queue_Duration"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Integration Queue Duration"
  severity            = var.DataFactoryAlertIntegrationQueueDurationSeverity
  enabled             = var.DataFactoryAlertIntegrationQueueDurationEnabled
  frequency           = var.DataFactoryAlertIntegrationQueueDurationFrequency
  window_size         = coalesce(var.DataFactoryAlertIntegrationQueueDurationWindow, var.DataFactoryAlertIntegrationQueueDurationFrequency)
  auto_mitigate       = var.DataFactoryAlertIntegrationQueueDurationAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "IntegrationRuntimeAverageTaskPickupDelay"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertIntegrationQueueDurationThreshold

    dimension {
      name     = "IntegrationRuntimeName"
      operator = "Include"
      values   = var.DataFactoryAlertIntegrationQueueDurationIntegrationNames
    }

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertIntegrationQueueDurationActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##################################
#### Integration Queue Length ####
##################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-integration-queue-length" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertIntegrationQueueLengthCreated == true ? 1 : 0
  name                = "DataFactory_Integration_Queue_Length"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Integration Queue Length"
  severity            = var.DataFactoryAlertIntegrationQueueLengthSeverity
  enabled             = var.DataFactoryAlertIntegrationQueueLengthEnabled
  frequency           = var.DataFactoryAlertIntegrationQueueLengthFrequency
  window_size         = coalesce(var.DataFactoryAlertIntegrationQueueLengthWindow, var.DataFactoryAlertIntegrationQueueLengthFrequency)
  auto_mitigate       = var.DataFactoryAlertIntegrationQueueLengthAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "IntegrationRuntimeQueueLength"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertIntegrationQueueLengthThreshold

    dimension {
      name     = "IntegrationRuntimeName"
      operator = "Include"
      values   = var.DataFactoryAlertIntegrationQueueLengthIntegrationNames
    }

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertIntegrationQueueLengthActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

####################################
#### Integration CPU Percentage ####
####################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-integration-cpu-percentage" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertIntegrationCPUPercentageCreated == true ? 1 : 0
  name                = "DataFactory_Integration_CPU_Percentage"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Integration CPU Percentage"
  severity            = var.DataFactoryAlertIntegrationCPUPercentageSeverity
  enabled             = var.DataFactoryAlertIntegrationCPUPercentageEnabled
  frequency           = var.DataFactoryAlertIntegrationCPUPercentageFrequency
  window_size         = coalesce(var.DataFactoryAlertIntegrationCPUPercentageWindow, var.DataFactoryAlertIntegrationCPUPercentageFrequency)
  auto_mitigate       = var.DataFactoryAlertIntegrationCPUPercentageAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "IntegrationRuntimeCpuPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertIntegrationCPUPercentageThreshold

    dimension {
      name     = "IntegrationRuntimeName"
      operator = "Include"
      values   = var.DataFactoryAlertIntegrationCPUPercentageIntegrationNames
    }

    dimension {
        name     = "NodeName"
        operator = "Include"
        values   = var.DataFactoryAlertIntegrationCPUPercentageNodeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertIntegrationCPUPercentageActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##################################################
################ SSIS Integration ################
##################################################

##########################################
#### SSIS Integration Start Cancelled ####
##########################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-integration-start-cancelled" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISIntegrationStartCancelledCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Integration_Start_Cancelled"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Integration Start Cancelled"
  severity            = var.DataFactoryAlertSSISIntegrationStartCancelledSeverity
  enabled             = var.DataFactoryAlertSSISIntegrationStartCancelledEnabled
  frequency           = var.DataFactoryAlertSSISIntegrationStartCancelledFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISIntegrationStartCancelledWindow, var.DataFactoryAlertSSISIntegrationStartCancelledFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISIntegrationStartCancelledAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISIntegrationRuntimeStartCancel"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISIntegrationStartCancelledThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISIntegrationStartCancelledRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISIntegrationStartCancelledActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#######################################
#### SSIS Integration Start Failed ####
#######################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-integration-start-failed" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISIntegrationStartFailedCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Integration_Start_Failed"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Integration Start Failed"
  severity            = var.DataFactoryAlertSSISIntegrationStartFailedSeverity
  enabled             = var.DataFactoryAlertSSISIntegrationStartFailedEnabled
  frequency           = var.DataFactoryAlertSSISIntegrationStartFailedFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISIntegrationStartFailedWindow, var.DataFactoryAlertSSISIntegrationStartFailedFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISIntegrationStartFailedAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISIntegrationRuntimeStartFailed"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISIntegrationStartFailedThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISIntegrationStartFailedRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISIntegrationStartFailedActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##########################################
#### SSIS Integration Start Succeeded ####
##########################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-integration-start-succeeded" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISIntegrationStartSucceededCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Integration_Start_Succeeded"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Integration Start Succeeded"
  severity            = var.DataFactoryAlertSSISIntegrationStartSucceededSeverity
  enabled             = var.DataFactoryAlertSSISIntegrationStartSucceededEnabled
  frequency           = var.DataFactoryAlertSSISIntegrationStartSucceededFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISIntegrationStartSucceededWindow, var.DataFactoryAlertSSISIntegrationStartSucceededFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISIntegrationStartSucceededAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISIntegrationRuntimeStartSucceeded"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISIntegrationStartSucceededThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISIntegrationStartSucceededRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISIntegrationStartSucceededActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#######################################
#### SSIS Integration Stop Stucked ####
#######################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-integration-stop-stucked" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISIntegrationStopStuckedCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Integration_Stop_Stucked"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Integration Stop Stucked"
  severity            = var.DataFactoryAlertSSISIntegrationStopStuckedSeverity
  enabled             = var.DataFactoryAlertSSISIntegrationStopStuckedEnabled
  frequency           = var.DataFactoryAlertSSISIntegrationStopStuckedFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISIntegrationStopStuckedWindow, var.DataFactoryAlertSSISIntegrationStopStuckedFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISIntegrationStopStuckedAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISIntegrationRuntimeStopStucked"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISIntegrationStopStuckedThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISIntegrationStopStuckedRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISIntegrationStopStuckedActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#########################################
#### SSIS Integration Stop Succeeded ####
#########################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-integration-stop-succeeded" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISIntegrationStopSucceededCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Integration_Stop_Succeeded"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Integration Stop Succeeded"
  severity            = var.DataFactoryAlertSSISIntegrationStopSucceededSeverity
  enabled             = var.DataFactoryAlertSSISIntegrationStopSucceededEnabled
  frequency           = var.DataFactoryAlertSSISIntegrationStopSucceededFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISIntegrationStopSucceededWindow, var.DataFactoryAlertSSISIntegrationStopSucceededFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISIntegrationStopSucceededAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISIntegrationRuntimeStopSucceeded"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISIntegrationStopSucceededThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISIntegrationStopSucceededRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISIntegrationStopSucceededActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##############################################
################ SSIS Package ################
##############################################

################################
#### SSIS Package Cancelled ####
################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-package-cancelled" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISPackageCancelledCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Package_Cancelled"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Package Cancelled"
  severity            = var.DataFactoryAlertSSISPackageCancelledSeverity
  enabled             = var.DataFactoryAlertSSISPackageCancelledEnabled
  frequency           = var.DataFactoryAlertSSISPackageCancelledFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISPackageCancelledWindow, var.DataFactoryAlertSSISPackageCancelledFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISPackageCancelledAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISPackageExecutionCancel"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISPackageCancelledThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISPackageCancelledRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISPackageCancelledActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

#############################
#### SSIS Package Failed ####
#############################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-package-failed" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISPackageFailedCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Package_Failed"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Package Failed"
  severity            = var.DataFactoryAlertSSISPackageFailedSeverity
  enabled             = var.DataFactoryAlertSSISPackageFailedEnabled
  frequency           = var.DataFactoryAlertSSISPackageFailedFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISPackageFailedWindow, var.DataFactoryAlertSSISPackageFailedFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISPackageFailedAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISPackageExecutionFailed"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISPackageFailedThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISPackageFailedRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISPackageFailedActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

################################
#### SSIS Package Succeeded ####
################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-ssis-package-succeeded" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertSSISPackageSucceededCreated == true ? 1 : 0
  name                = "DataFactory_SSIS_Package_Succeeded"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} SSIS Package Succeeded"
  severity            = var.DataFactoryAlertSSISPackageSucceededSeverity
  enabled             = var.DataFactoryAlertSSISPackageSucceededEnabled
  frequency           = var.DataFactoryAlertSSISPackageSucceededFrequency
  window_size         = coalesce(var.DataFactoryAlertSSISPackageSucceededWindow, var.DataFactoryAlertSSISPackageSucceededFrequency)
  auto_mitigate       = var.DataFactoryAlertSSISPackageSucceededAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "SSISPackageExecutionSucceeded"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertSSISPackageSucceededThreshold

    dimension {
        name     = "IntegrationRuntimeName"
        operator = "Include"
        values   = var.DataFactoryAlertSSISPackageSucceededRuntimeNames
    }
  }

  dynamic "action" {
    for_each = var.DataFactoryAlertSSISPackageSucceededActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

##############################################
################ Factory Size ################
##############################################

#################################
#### Total Factory Size (GB) ####
#################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-total-factory-size-gb" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertTotalFactorySizeGBCreated == true ? 1 : 0
  name                = "DataFactory_Total_Factory_Size_GB"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Total Factory Size (GB)"
  severity            = var.DataFactoryAlertTotalFactorySizeGBSeverity
  enabled             = var.DataFactoryAlertTotalFactorySizeGBEnabled
  frequency           = var.DataFactoryAlertTotalFactorySizeGBFrequency
  window_size         = coalesce(var.DataFactoryAlertTotalFactorySizeGBWindow, var.DataFactoryAlertTotalFactorySizeGBFrequency)
  auto_mitigate       = var.DataFactoryAlertTotalFactorySizeGBAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "FactorySizeInGbUnits"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertTotalFactorySizeGBThreshold

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertTotalFactorySizeGBActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

###################################
#### Maximum Factory Size (GB) ####
###################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-maximum-factory-size-gb" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertMaximumFactorySizeGBCreated == true ? 1 : 0
  name                = "DataFactory_Maximum_Factory_Size_GB"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Maximum Factory Size (GB)"
  severity            = var.DataFactoryAlertMaximumFactorySizeGBSeverity
  enabled             = var.DataFactoryAlertMaximumFactorySizeGBEnabled
  frequency           = var.DataFactoryAlertMaximumFactorySizeGBFrequency
  window_size         = coalesce(var.DataFactoryAlertMaximumFactorySizeGBWindow, var.DataFactoryAlertMaximumFactorySizeGBFrequency)
  auto_mitigate       = var.DataFactoryAlertMaximumFactorySizeGBAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "MaxAllowedFactorySizeInGbUnits"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertMaximumFactorySizeGBThreshold

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertMaximumFactorySizeGBActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

################################################
################ Entities Count ################
################################################

##############################
#### Total Entities Count ####
##############################

resource "azurerm_monitor_metric_alert" "alert_datafactory-total-entities-count" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertTotalEntitiesCountCreated == true ? 1 : 0
  name                = "DataFactory_Total_Entities_Count"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Total Entities Count"
  severity            = var.DataFactoryAlertTotalEntitiesCountSeverity
  enabled             = var.DataFactoryAlertTotalEntitiesCountEnabled
  frequency           = var.DataFactoryAlertTotalEntitiesCountFrequency
  window_size         = coalesce(var.DataFactoryAlertTotalEntitiesCountWindow, var.DataFactoryAlertTotalEntitiesCountFrequency)
  auto_mitigate       = var.DataFactoryAlertTotalEntitiesCountAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "ResourceCount"
    aggregation      = "Maximum"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertTotalEntitiesCountThreshold

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertTotalEntitiesCountActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}

################################
#### Maximum Entities Count ####
################################

resource "azurerm_monitor_metric_alert" "alert_datafactory-maximum-entities-count" {
  lifecycle {
      ignore_changes = [tags]
    }
  count               = var.DataFactoryAlertMaximumEntitiesCountCreated == true ? 1 : 0
  name                = "DataFactory_Maximum_Entities_Count"
  resource_group_name = var.DataFactoryResourceGroupObject.name 
  scopes              = ["/subscriptions/${var.SubscriptionID}/resourceGroups/${var.DataFactoryResourceGroupObject.name}/providers/Microsoft.DataFactory/factories/${var.DataFactoryName}"]
  description         = "${var.DataFactoryName} Maximum Entities Count"
  severity            = var.DataFactoryAlertMaximumEntitiesCountSeverity
  enabled             = var.DataFactoryAlertMaximumEntitiesCountEnabled
  frequency           = var.DataFactoryAlertMaximumEntitiesCountFrequency
  window_size         = coalesce(var.DataFactoryAlertMaximumEntitiesCountWindow, var.DataFactoryAlertMaximumEntitiesCountFrequency)
  auto_mitigate       = var.DataFactoryAlertMaximumEntitiesCountAutoResolve
  
  criteria {
    metric_namespace = "Microsoft.DataFactory/factories"
    metric_name      = "MaxAllowedResourceCount"
    aggregation      = "Maximum"
    operator         = "GreaterThan"
    threshold        = var.DataFactoryAlertMaximumEntitiesCountThreshold

  }

  dynamic "action" {
    for_each = var.DataFactoryAlertMaximumEntitiesCountActionGroupIDs
    content {
        action_group_id = action.value
    }
  }

  tags  = local.tags
}