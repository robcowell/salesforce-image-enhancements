@isTest
public with sharing class imageViewerDesignControllerTest
{
    @isTest
    public static void testGetValues()
    {
        Integer expectedValues = 7;
        imageViewerDesignController controller = new imageViewerDesignController();
        test.startTest();
        VisualEditor.DynamicPickListRows rows = controller.getValues();
        test.stopTest();
        System.assert(rows != null);
        System.assertEquals(expectedValues, rows.size());        
    }

    @isTest
    public static void testGetDefault()
    {
        String expectedDefault = 'Work Order';
        imageViewerDesignController controller = new imageViewerDesignController();
        test.startTest();
        VisualEditor.DataRow row = controller.getDefaultValue();
        test.stopTest();
        System.assert(row != null);
        System.assertEquals(expectedDefault, row.getLabel());
    }
}