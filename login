import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.*;
import java.awt.event.*;

public class login extends JFrame{
    private JButton loginButtonButton;
    private JPanel panel;
    private JTextField textField1TextField;
    private JPasswordField passwordfielPasswordField;
    private JCheckBox agreeToTermsCheckBoxCheckBox;
    private JLabel warning;
    private JLabel pic;

    public login() {
        setSize(500,500);
        setContentPane(panel);
        setEnabled(false);

        textField1TextField.addFocusListener(new FocusAdapter() {
            @Override
            public void focusLost(FocusEvent e) {
                super.focusLost(e);
                if (textField1TextField.getText().length() <= 5){
                    warning.setForeground(Color.RED);
                    warning.setText("username can't be smaller than 5 characters.");
                  textField1TextField.requestFocus();
                }else{
                    warning.setText(" ");
                }
            }
        });
        loginButtonButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
    if (passwordfielPasswordField.getText().equals("password")){
                    warning.setForeground(Color.GREEN);
                    warning.setText("bravo!");
                }else{
                    warning.setForeground(Color.RED);
                    warning.setText("wrong!");
                }
            }
        });
    }
}
