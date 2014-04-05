package ru.kpfu.itis.utils;

/**
 * Created by Ilnur on 06.04.14.
 *
 * Checks the validity of e-mail and age.
 *
 * @version 1.0
 */
public class Validator {

    /*
    * Checks the validity of age. It will be numeric and no longer than three characters.
    *
    * @param String
    * @return true if it is valid. Else false.
     */
    public static boolean isValidAge(String mAge) {
        if (!mAge.matches("^[0-9]{1,3}$")) {
            return false;
        }
        return true;
    }

    /*
    * Checks the validity of e-mail.
    *
    * @param String
    * @return true if it is valid. Else false.
     */
    public static boolean isValidEmail(String mEmail) {
        if (!mEmail.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")) {
            return false;
        }
        return true;
    }
}
