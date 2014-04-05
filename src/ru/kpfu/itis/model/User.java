package ru.kpfu.itis.model;

import java.io.Serializable;

/**
 * Created by Ilnur on 06.04.14.
 *
 * User object.
 *
 * @version 1.0
 */
public class User implements Serializable, Comparable<User> {
    /** User e-mail*/
    private String mEmail;
    /**User age*/
    private int mAge;

    public User(){

    }

    public User(String mEmail, int mAge) {
        this.mEmail = mEmail;
        this.mAge = mAge;
    }

    public String getmEmail() {
        return mEmail;
    }

    public void setmEmail(String mEmail) {
        this.mEmail = mEmail;
    }

    public int getmAge() {
        return mAge;
    }

    public void setmAge(int mAge) {
        this.mAge = mAge;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (mAge != user.mAge) return false;
        if (mEmail != null ? !mEmail.equals(user.mEmail) : user.mEmail != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = mEmail != null ? mEmail.hashCode() : 0;
        result = 31 * result + mAge;
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "mEmail='" + mEmail + '\'' +
                ", mAge=" + mAge +
                '}';
    }

    @Override
    public int compareTo(User o) {
        if(this.mAge > o.mAge){
            return 1;
        } else if (this.mAge < o.mAge) {
            return -1;
        } else return 0;
    }
}
