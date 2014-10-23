package com.webratio.webapp;

public class Rank extends com.webratio.webapp.Usertable implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.String _companyName;

    private java.lang.String _firstName;

    private java.lang.String _lastName;

    private java.lang.String _city;

    private java.lang.String _smallPhoto;

    private java.lang.String _country;

    private java.lang.Boolean _publicProfile;

    private java.lang.String _geographicalArea;

    private java.lang.String _bigPhoto;

    private java.math.BigDecimal _participationMonthly;

    private java.sql.Date _birthdate;

    private java.math.BigDecimal _participation;

    private java.math.BigDecimal _credit;

    private java.lang.String _isoCode;

    private java.util.Set _rankToNotification = new java.util.HashSet();

    private java.util.Set _rankToRewardinstance = new java.util.HashSet();

    private java.util.Set _rankToActioninstance = new java.util.HashSet();

    private java.util.Set _rankToBadgeinstance = new java.util.HashSet();

    private float _searchScore;

    public java.lang.String getCompanyName() {
        return _companyName;
    }

    public void setCompanyName(java.lang.String _companyName) {
        this._companyName = _companyName;
    }

    public java.lang.String getFirstName() {
        return _firstName;
    }

    public void setFirstName(java.lang.String _firstName) {
        this._firstName = _firstName;
    }

    public java.lang.String getLastName() {
        return _lastName;
    }

    public void setLastName(java.lang.String _lastName) {
        this._lastName = _lastName;
    }

    public java.lang.String getCity() {
        return _city;
    }

    public void setCity(java.lang.String _city) {
        this._city = _city;
    }

    public java.lang.String getSmallPhoto() {
        return _smallPhoto;
    }

    public void setSmallPhoto(java.lang.String _smallPhoto) {
        this._smallPhoto = _smallPhoto;
    }

    public java.lang.String getCountry() {
        return _country;
    }

    public void setCountry(java.lang.String _country) {
        this._country = _country;
    }

    public java.lang.Boolean getPublicProfile() {
        return _publicProfile;
    }

    public void setPublicProfile(java.lang.Boolean _publicProfile) {
        this._publicProfile = _publicProfile;
    }

    public java.lang.String getGeographicalArea() {
        return _geographicalArea;
    }

    public void setGeographicalArea(java.lang.String _geographicalArea) {
        this._geographicalArea = _geographicalArea;
    }

    public java.lang.String getBigPhoto() {
        return _bigPhoto;
    }

    public void setBigPhoto(java.lang.String _bigPhoto) {
        this._bigPhoto = _bigPhoto;
    }

    public java.math.BigDecimal getParticipationMonthly() {
        return _participationMonthly;
    }

    public void setParticipationMonthly(java.math.BigDecimal _participationMonthly) {
        this._participationMonthly = _participationMonthly;
    }

    public java.sql.Date getBirthdate() {
        return _birthdate;
    }

    public void setBirthdate(java.sql.Date _birthdate) {
        this._birthdate = _birthdate;
    }

    public java.math.BigDecimal getParticipation() {
        return _participation;
    }

    public void setParticipation(java.math.BigDecimal _participation) {
        this._participation = _participation;
    }

    public java.math.BigDecimal getCredit() {
        return _credit;
    }

    public void setCredit(java.math.BigDecimal _credit) {
        this._credit = _credit;
    }

    public java.lang.String getIsoCode() {
        return _isoCode;
    }

    public void setIsoCode(java.lang.String _isoCode) {
        this._isoCode = _isoCode;
    }

    public java.util.Set getRankToNotification() {
        return _rankToNotification;
    }

    public void setRankToNotification(java.util.Set _rankToNotification) {
        this._rankToNotification = _rankToNotification;
    }

    public java.util.Set getRankToRewardinstance() {
        return _rankToRewardinstance;
    }

    public void setRankToRewardinstance(java.util.Set _rankToRewardinstance) {
        this._rankToRewardinstance = _rankToRewardinstance;
    }

    public java.util.Set getRankToActioninstance() {
        return _rankToActioninstance;
    }

    public void setRankToActioninstance(java.util.Set _rankToActioninstance) {
        this._rankToActioninstance = _rankToActioninstance;
    }

    public java.util.Set getRankToBadgeinstance() {
        return _rankToBadgeinstance;
    }

    public void setRankToBadgeinstance(java.util.Set _rankToBadgeinstance) {
        this._rankToBadgeinstance = _rankToBadgeinstance;
    }

    public float getSearchScore() {
        return _searchScore;
    }

    public void setSearchScore(float _searchScore) {
        this._searchScore = _searchScore;
    }

    public String toString() {
        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        sb.append(super.toString());
        int n = sb.length() - 1;
        if (sb.charAt(n) == ']') {
            sb.setCharAt(n, ',');
        } else {
            sb.append('[');
        }
        if (_companyName != null)
            sb.append("companyName=" + _companyName + ',');
        if (_firstName != null)
            sb.append("firstName=" + _firstName + ',');
        if (_lastName != null)
            sb.append("lastName=" + _lastName + ',');
        if (_city != null)
            sb.append("city=" + _city + ',');
        if (_smallPhoto != null)
            sb.append("smallPhoto=" + _smallPhoto + ',');
        if (_country != null)
            sb.append("country=" + _country + ',');
        if (_publicProfile != null)
            sb.append("publicProfile=" + _publicProfile + ',');
        if (_geographicalArea != null)
            sb.append("geographicalArea=" + _geographicalArea + ',');
        if (_bigPhoto != null)
            sb.append("bigPhoto=" + _bigPhoto + ',');
        if (_participationMonthly != null)
            sb.append("participationMonthly=" + _participationMonthly + ',');
        if (_birthdate != null)
            sb.append("birthdate=" + _birthdate + ',');
        if (_participation != null)
            sb.append("participation=" + _participation + ',');
        if (_credit != null)
            sb.append("credit=" + _credit + ',');
        if (_isoCode != null)
            sb.append("isoCode=" + _isoCode + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }
}
