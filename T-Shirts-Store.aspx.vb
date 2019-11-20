'Name:          Shazam Zafar
'Class:         ASP.NET
'Date:          10/31/19
'Project:       T-Shirt Store for RHODES STATE COLLEGE


Option Strict On

Partial Class T_Shirts_Store
    Inherits System.Web.UI.Page
    ' Class Level Variable for Grand Totals
    Private TotalSmall As Integer
    Private TotalMedium As Integer
    Private TotalLarge As Integer

    Protected Sub AddButton_Click(sender As Object, e As EventArgs) Handles AddButton.Click
        ' Variables
        Dim AllPrice As Decimal = 10
        Dim MonogramPrice As Decimal = 0
        Dim TShirtQuantity As Integer
        Dim Total As Decimal

        ' converting 
        TShirtQuantity = Integer.Parse(QuantityTextBox.Text)


        ' Radio Buttons For determine which size is selected 
        ' grand totals ifs
        If SizeRadioButton.SelectedIndex = 0 Then
            TotalSmall += TShirtQuantity
            TotalSmallHiddenField.Value = TotalSmall.ToString
            Small_label.Text = TotalSmall.ToString

            SizeLabel.Text = "Small"

        ElseIf SizeRadioButton.SelectedIndex = 1 Then
            TotalMedium += TShirtQuantity
            TotalMediumHiddenField.Value = TotalMedium.ToString
            Medium_Label.Text = TotalMedium.ToString

            SizeLabel.Text = "Medium"
        ElseIf SizeRadioButton.SelectedIndex = 2 Then
            TotalLarge += TShirtQuantity
            TotalLargeHiddenField.Value = TotalLarge.ToString
            Large_Label.Text = TotalLarge.ToString

            SizeLabel.Text = "Large"
        End If

        ' Checkbox for Monogram price
        If MonogramCheckBox.Checked = True Then
            MonogramPrice += 8
            MonogrammedLabel.Text = "Yes"
        Else
            MonogrammedLabel.Text = "No"
        End If

        'Changing the color of 4 labels
        If ColorRadioButton.SelectedIndex = 0 Then
            NumberofTshirtsLabel.ForeColor = Drawing.Color.Red
            SizeLabel.ForeColor = Drawing.Color.Red
            MonogrammedLabel.ForeColor = Drawing.Color.Red
            CostLabel.ForeColor = Drawing.Color.Red

        ElseIf ColorRadioButton.SelectedIndex = 1 Then
            NumberofTshirtsLabel.ForeColor = Drawing.Color.Green
            SizeLabel.ForeColor = Drawing.Color.Green
            MonogrammedLabel.ForeColor = Drawing.Color.Green
            CostLabel.ForeColor = Drawing.Color.Green

        ElseIf ColorRadioButton.SelectedIndex = 2 Then
            NumberofTshirtsLabel.ForeColor = Drawing.Color.Blue
            SizeLabel.ForeColor = Drawing.Color.Blue
            MonogrammedLabel.ForeColor = Drawing.Color.Blue
            CostLabel.ForeColor = Drawing.Color.Blue

        ElseIf ColorRadioButton.SelectedIndex = 3 Then
            NumberofTshirtsLabel.ForeColor = Drawing.Color.Purple
            SizeLabel.ForeColor = Drawing.Color.Purple
            MonogrammedLabel.ForeColor = Drawing.Color.Purple
            CostLabel.ForeColor = Drawing.Color.Purple
        End If

        'Total price
        Total = (AllPrice + MonogramPrice) * TShirtQuantity

        'Display
        NumberofTshirtsLabel.Text = TShirtQuantity.ToString()
        Displaylabel.Text = "Your order has been placed" & "<br/>" & " we will email a comfirmation"
        CostLabel.Text = Total.ToString("C")
    End Sub
    ' Page Load Event Running totals
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = True And TotalSmallHiddenField.Value <> "" Then
            TotalSmall = Integer.Parse(TotalSmallHiddenField.Value)
        End If

        If IsPostBack = True And TotalMediumHiddenField.Value <> "" Then
            TotalMedium = Integer.Parse(TotalMediumHiddenField.Value)
        End If

        If IsPostBack = True And TotalLargeHiddenField.Value <> "" Then
            TotalLarge = Integer.Parse(TotalLargeHiddenField.Value)
        End If

    End Sub
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        ' Clearing for next customers
        SizeRadioButton.SelectedIndex = -1
        ColorRadioButton.SelectedIndex = -1
        QuantityTextBox.Text = ""
        MonogramCheckBox.Checked = False
        MonogrammedLabel.Text = ""
        EnterText_Mongram_TextBox.Text = ""
        Displaylabel.Text = ""
        NumberofTshirtsLabel.Text = ""
        SizeLabel.Text = ""
        CostLabel.Text = ""

    End Sub
End Class
