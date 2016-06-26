package com.iit.ooad;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JTabbedPane;
import java.awt.BorderLayout;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JTextArea;
import javax.swing.JLabel;
import java.awt.Font;

public class SellerForm {

	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTextField textField_5;
	private JTextField textField_6;
	private JTextField textField_7;
	private JTextField textField_8;
	private JTextField textField_9;
	private JTextField textField_10;
	private JTextField textField_11;
	private JTextField txtEnterCarName;
	private JTextField textField_12;
	private JTextField textField_13;
	private JTextField textField_14;
	private JTextField textField_15;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					SellerForm window = new SellerForm();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public SellerForm() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 806, 498);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		frame.getContentPane().add(tabbedPane, BorderLayout.CENTER);
		
		JPanel panel = new JPanel();
		tabbedPane.addTab("Home", null, panel, null);
		panel.setLayout(null);
		
		JButton btnSearch = new JButton("Search");
		btnSearch.setBounds(606, 20, 89, 23);
		panel.add(btnSearch);
		
		txtEnterCarName = new JTextField();
		txtEnterCarName.setText("Enter Car Name");
		txtEnterCarName.setBounds(25, 21, 526, 20);
		panel.add(txtEnterCarName);
		txtEnterCarName.setColumns(10);
		
		JPanel panel_1 = new JPanel();
		tabbedPane.addTab("Create Ad", null, panel_1, null);
		panel_1.setLayout(null);
		
		textField = new JTextField();
		textField.setBounds(150, 56, 187, 20);
		panel_1.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBounds(150, 100, 187, 20);
		panel_1.add(textField_1);
		textField_1.setColumns(10);
		
		JButton btnPostAd = new JButton("Post Ad");
		btnPostAd.setBounds(150, 316, 89, 23);
		panel_1.add(btnPostAd);
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.setBounds(544, 316, 89, 23);
		panel_1.add(btnCancel);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(150, 146, 483, 134);
		panel_1.add(textArea);
		
		JLabel lblNewLabel = new JLabel("Enter Car Details");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblNewLabel.setBounds(48, 11, 153, 22);
		panel_1.add(lblNewLabel);
		
		JLabel lblMake = new JLabel("Make:");
		lblMake.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblMake.setBounds(48, 57, 75, 16);
		panel_1.add(lblMake);
		
		JLabel lblModel = new JLabel("Model:");
		lblModel.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblModel.setBounds(48, 103, 75, 16);
		panel_1.add(lblModel);
		
		JLabel lblDetails = new JLabel("Details:");
		lblDetails.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblDetails.setBounds(48, 151, 75, 16);
		panel_1.add(lblDetails);
		
		JPanel panel_2 = new JPanel();
		tabbedPane.addTab("Account Setting", null, panel_2, null);
		panel_2.setLayout(null);
		
		textField_2 = new JTextField();
		textField_2.setBounds(173, 44, 451, 20);
		panel_2.add(textField_2);
		textField_2.setColumns(10);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(173, 81, 451, 20);
		panel_2.add(textField_3);
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		textField_4.setBounds(173, 114, 451, 20);
		panel_2.add(textField_4);
		
		textField_5 = new JTextField();
		textField_5.setColumns(10);
		textField_5.setBounds(173, 145, 451, 20);
		panel_2.add(textField_5);
		
		textField_6 = new JTextField();
		textField_6.setColumns(10);
		textField_6.setBounds(173, 180, 451, 20);
		panel_2.add(textField_6);
		
		textField_7 = new JTextField();
		textField_7.setColumns(10);
		textField_7.setBounds(173, 211, 451, 20);
		panel_2.add(textField_7);
		
		textField_8 = new JTextField();
		textField_8.setColumns(10);
		textField_8.setBounds(173, 242, 451, 20);
		panel_2.add(textField_8);
		
		textField_9 = new JTextField();
		textField_9.setColumns(10);
		textField_9.setBounds(173, 279, 451, 20);
		panel_2.add(textField_9);
		
		textField_10 = new JTextField();
		textField_10.setColumns(10);
		textField_10.setBounds(173, 312, 451, 20);
		panel_2.add(textField_10);
		
		textField_11 = new JTextField();
		textField_11.setColumns(10);
		textField_11.setBounds(173, 343, 451, 20);
		panel_2.add(textField_11);
		
		JButton btnUpdate = new JButton("UPDATE");
		btnUpdate.setBounds(173, 383, 89, 23);
		panel_2.add(btnUpdate);
		
		JButton btnSave = new JButton("SAVE");
		btnSave.setBounds(362, 383, 89, 23);
		panel_2.add(btnSave);
		
		JButton btnCancel_1 = new JButton("CANCEL");
		btnCancel_1.setBounds(535, 383, 89, 23);
		panel_2.add(btnCancel_1);
		
		JLabel lblPersonalDetails = new JLabel("Personal Details");
		lblPersonalDetails.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblPersonalDetails.setBounds(10, 17, 168, 16);
		panel_2.add(lblPersonalDetails);
		
		JLabel lblName = new JLabel("Name");
		lblName.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblName.setBounds(10, 50, 168, 16);
		panel_2.add(lblName);
		
		JLabel lblContactNumber = new JLabel("Contact Number");
		lblContactNumber.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblContactNumber.setBounds(10, 82, 168, 16);
		panel_2.add(lblContactNumber);
		
		JLabel lblEmailId = new JLabel("Email ID");
		lblEmailId.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblEmailId.setBounds(10, 115, 168, 16);
		panel_2.add(lblEmailId);
		
		JLabel lblDateOfBirth = new JLabel("Date of Birth");
		lblDateOfBirth.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblDateOfBirth.setBounds(10, 148, 168, 16);
		panel_2.add(lblDateOfBirth);
		
		JLabel lblAddress = new JLabel("Address");
		lblAddress.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblAddress.setBounds(10, 181, 168, 16);
		panel_2.add(lblAddress);
		
		JLabel lblState = new JLabel("State");
		lblState.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblState.setBounds(10, 214, 168, 16);
		panel_2.add(lblState);
		
		JLabel lblZip = new JLabel("Zip");
		lblZip.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblZip.setBounds(10, 247, 168, 16);
		panel_2.add(lblZip);
		
		JLabel lblBankAccountNumber = new JLabel("Bank Account Number");
		lblBankAccountNumber.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblBankAccountNumber.setBounds(10, 280, 168, 16);
		panel_2.add(lblBankAccountNumber);
		
		JLabel lblAccountHolderName = new JLabel("Account Holder Name");
		lblAccountHolderName.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblAccountHolderName.setBounds(10, 313, 168, 16);
		panel_2.add(lblAccountHolderName);
		
		JLabel lblRoutingNumber = new JLabel("Routing Number");
		lblRoutingNumber.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblRoutingNumber.setBounds(10, 346, 168, 16);
		panel_2.add(lblRoutingNumber);
		
		JPanel panel_3 = new JPanel();
		tabbedPane.addTab("File Complaint", null, panel_3, null);
		panel_3.setLayout(null);
		
		JTextArea textArea_3 = new JTextArea();
		textArea_3.setBounds(168, 250, 547, 98);
		panel_3.add(textArea_3);
		
		JButton btnPost = new JButton("POST");
		btnPost.setBounds(168, 372, 89, 23);
		panel_3.add(btnPost);
		
		JButton btnCancel_2 = new JButton("CANCEL");
		btnCancel_2.setBounds(626, 372, 89, 23);
		panel_3.add(btnCancel_2);
		
		textField_12 = new JTextField();
		textField_12.setBounds(168, 64, 547, 20);
		panel_3.add(textField_12);
		textField_12.setColumns(10);
		
		textField_13 = new JTextField();
		textField_13.setColumns(10);
		textField_13.setBounds(168, 111, 547, 20);
		panel_3.add(textField_13);
		
		textField_14 = new JTextField();
		textField_14.setColumns(10);
		textField_14.setBounds(168, 157, 547, 20);
		panel_3.add(textField_14);
		
		textField_15 = new JTextField();
		textField_15.setColumns(10);
		textField_15.setBounds(168, 205, 547, 20);
		panel_3.add(textField_15);
		
		JLabel lblNewLabel_1 = new JLabel("Enter Complaint Details");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblNewLabel_1.setBounds(25, 11, 148, 23);
		panel_3.add(lblNewLabel_1);
		
		JLabel lblAdId = new JLabel("Ad ID");
		lblAdId.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblAdId.setBounds(25, 61, 98, 23);
		panel_3.add(lblAdId);
		
		JLabel lblName_1 = new JLabel("Name");
		lblName_1.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblName_1.setBounds(25, 111, 98, 23);
		panel_3.add(lblName_1);
		
		JLabel lblEmailId_1 = new JLabel("Email ID");
		lblEmailId_1.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblEmailId_1.setBounds(25, 154, 98, 23);
		panel_3.add(lblEmailId_1);
		
		JLabel lblContact = new JLabel("Contact");
		lblContact.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblContact.setBounds(25, 202, 98, 23);
		panel_3.add(lblContact);
		
		JLabel lblDescription = new JLabel("Description");
		lblDescription.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblDescription.setBounds(25, 255, 98, 23);
		panel_3.add(lblDescription);
		
		JPanel panel_4 = new JPanel();
		tabbedPane.addTab("Logout", null, panel_4, null);
		panel_4.setLayout(null);
		
		JButton btnLogout = new JButton("LOGOUT");
		btnLogout.setBounds(665, 11, 89, 23);
		panel_4.add(btnLogout);
	}
}
