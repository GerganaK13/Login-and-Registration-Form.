import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class LoginForm {
    public JPanel panel;
    private JTextField textField1;
    private JPasswordField passwordField1;
    private JTextField emailtextField2;
    private JCheckBox iAgreeToTermsCheckBox;
    private JButton loginButton;
    private JLabel pic;
    private JLabel username;
    private JLabel password;
    private JLabel email;

    public LoginForm() {
        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String usernameInput = textField1.getText();
                String emailInput = emailtextField2.getText();
                String passwordInput = new String(passwordField1.getPassword());
                if (!isValidUsername(usernameInput)) {
                    JOptionPane.showMessageDialog(panel, "Username must have at least 5 characters.", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                if (!isValidEmail(emailInput)) {
                    JOptionPane.showMessageDialog(panel, "Invalid email format.", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }

                if (!isValidPassword(passwordInput)) {
                    JOptionPane.showMessageDialog(panel, "Password must have 8+ characters, at least one uppercase letter, and one number.", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }

                if (!iAgreeToTermsCheckBox.isSelected()) {
                    JOptionPane.showMessageDialog(panel, "You must agree to the terms and conditions.", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }

                JOptionPane.showMessageDialog(panel, "Registration Successful!", "Success", JOptionPane.INFORMATION_MESSAGE);
            }
        });
    }

    private boolean isValidUsername(String username) {
        return username.length() >= 5;
    }

    private boolean isValidEmail(String email) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return email.matches(emailRegex);
    }

    private boolean isValidPassword(String password) {
        String passwordRegex = "^(?=.*[A-Z])(?=.*\\d).{8,}$";
        return password.matches(passwordRegex);
    }
}
