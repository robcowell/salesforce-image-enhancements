global class imageViewerDesignController extends VisualEditor.DynamicPickList
{
    global override VisualEditor.DataRow getDefaultValue()
    {
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Work Order', 'WorkOrder');
        return defaultValue;
    }

    global override VisualEditor.DynamicPickListRows getValues()
    {
        VisualEditor.DataRow workOrderValue = new VisualEditor.DataRow('Work Order', 'Work_Order_Attached_Image__c');

        VisualEditor.DynamicPickListRows  picklistValues = new VisualEditor.DynamicPickListRows();
        picklistValues.addRow(workOrderValue);

        return picklistValues;

    }
}