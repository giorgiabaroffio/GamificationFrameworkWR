package com.webratio.webapp;

public class User implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _username;

    private java.lang.String _password;

    private java.lang.String _email;

    private java.lang.String _firstName;

    private java.lang.String _lastName;

    private java.lang.String _companyName;

    private java.lang.String _city;

    private java.lang.String _twitter;

    private java.lang.String _country;

    private java.lang.Boolean _certified;

    private java.lang.String _type;

    private java.lang.String _geographicalArea;

    private java.lang.Boolean _publicProfile;

    private java.lang.String _linkedin;

    private java.lang.String _bio;

    private java.lang.String _facebook;

    private java.lang.String _isoCode;

    private java.lang.String _google;

    private java.lang.Boolean _partner;

    private java.lang.Boolean _internal;

    private java.lang.String _webSite;

    private java.lang.String _smallPhotoRef;

    private java.lang.Object _smallPhoto;

    private java.sql.Blob _smallPhotoBinary;

    private java.lang.String _bigPhotoRef;

    private java.lang.Object _bigPhoto;

    private java.sql.Blob _bigPhotoBinary;

    private java.sql.Date _birthDate;

    private java.util.Set _groups = new java.util.HashSet();

    private com.webratio.webapp.Group _defaultGroup;

    private java.util.Set _rankToPostForum = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getUsername() {
        return _username;
    }

    public void setUsername(java.lang.String _username) {
        this._username = _username;
    }

    public java.lang.String getPassword() {
        return _password;
    }

    public void setPassword(java.lang.String _password) {
        this._password = _password;
    }

    public java.lang.String getEmail() {
        return _email;
    }

    public void setEmail(java.lang.String _email) {
        this._email = _email;
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

    public java.lang.String getCompanyName() {
        return _companyName;
    }

    public void setCompanyName(java.lang.String _companyName) {
        this._companyName = _companyName;
    }

    public java.lang.String getCity() {
        return _city;
    }

    public void setCity(java.lang.String _city) {
        this._city = _city;
    }

    public java.lang.String getTwitter() {
        return _twitter;
    }

    public void setTwitter(java.lang.String _twitter) {
        this._twitter = _twitter;
    }

    public java.lang.String getCountry() {
        return _country;
    }

    public void setCountry(java.lang.String _country) {
        this._country = _country;
    }

    public java.lang.Boolean getCertified() {
        return _certified;
    }

    public void setCertified(java.lang.Boolean _certified) {
        this._certified = _certified;
    }

    public java.lang.String getType() {
        return _type;
    }

    public void setType(java.lang.String _type) {
        this._type = _type;
    }

    public java.lang.String getGeographicalArea() {
        return _geographicalArea;
    }

    public void setGeographicalArea(java.lang.String _geographicalArea) {
        this._geographicalArea = _geographicalArea;
    }

    public java.lang.Boolean getPublicProfile() {
        return _publicProfile;
    }

    public void setPublicProfile(java.lang.Boolean _publicProfile) {
        this._publicProfile = _publicProfile;
    }

    public java.lang.String getLinkedin() {
        return _linkedin;
    }

    public void setLinkedin(java.lang.String _linkedin) {
        this._linkedin = _linkedin;
    }

    public java.lang.String getBio() {
        return _bio;
    }

    public void setBio(java.lang.String _bio) {
        this._bio = _bio;
    }

    public java.lang.String getFacebook() {
        return _facebook;
    }

    public void setFacebook(java.lang.String _facebook) {
        this._facebook = _facebook;
    }

    public java.lang.String getIsoCode() {
        return _isoCode;
    }

    public void setIsoCode(java.lang.String _isoCode) {
        this._isoCode = _isoCode;
    }

    public java.lang.String getGoogle() {
        return _google;
    }

    public void setGoogle(java.lang.String _google) {
        this._google = _google;
    }

    public java.lang.Boolean getPartner() {
        return _partner;
    }

    public void setPartner(java.lang.Boolean _partner) {
        this._partner = _partner;
    }

    public java.lang.Boolean getInternal() {
        return _internal;
    }

    public void setInternal(java.lang.Boolean _internal) {
        this._internal = _internal;
    }

    public java.lang.String getWebSite() {
        return _webSite;
    }

    public void setWebSite(java.lang.String _webSite) {
        this._webSite = _webSite;
    }

    public java.lang.String getSmallPhotoRef() {
        return _smallPhotoRef;
    }

    public void setSmallPhotoRef(java.lang.String _smallPhotoRef) {
        this._smallPhotoRef = _smallPhotoRef;
    }

    public java.sql.Blob getSmallPhotoBinary() {
        return _smallPhotoBinary;
    }

    public void setSmallPhotoBinary(java.sql.Blob _smallPhotoBinary) {
        this._smallPhotoBinary = _smallPhotoBinary;
    }

    public java.lang.Object getSmallPhoto() {
        return _smallPhoto;
    }

    public void setSmallPhoto(java.lang.Object _smallPhoto) {
        this._smallPhoto = _smallPhoto;
    }

    public java.lang.String getBigPhotoRef() {
        return _bigPhotoRef;
    }

    public void setBigPhotoRef(java.lang.String _bigPhotoRef) {
        this._bigPhotoRef = _bigPhotoRef;
    }

    public java.sql.Blob getBigPhotoBinary() {
        return _bigPhotoBinary;
    }

    public void setBigPhotoBinary(java.sql.Blob _bigPhotoBinary) {
        this._bigPhotoBinary = _bigPhotoBinary;
    }

    public java.lang.Object getBigPhoto() {
        return _bigPhoto;
    }

    public void setBigPhoto(java.lang.Object _bigPhoto) {
        this._bigPhoto = _bigPhoto;
    }

    public java.sql.Date getBirthDate() {
        return _birthDate;
    }

    public void setBirthDate(java.sql.Date _birthDate) {
        this._birthDate = _birthDate;
    }

    public java.util.Set getGroups() {
        return _groups;
    }

    public void setGroups(java.util.Set _groups) {
        this._groups = _groups;
    }

    public com.webratio.webapp.Group getDefaultGroup() {
        return _defaultGroup;
    }

    public void setDefaultGroup(com.webratio.webapp.Group _defaultGroup) {
        this._defaultGroup = _defaultGroup;
    }

    public java.util.Set getRankToPostForum() {
        return _rankToPostForum;
    }

    public void setRankToPostForum(java.util.Set _rankToPostForum) {
        this._rankToPostForum = _rankToPostForum;
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
        if (_oid != null)
            sb.append("oid=" + _oid + ',');
        if (_username != null)
            sb.append("username=" + _username + ',');
        if (_password != null)
            sb.append("password=" + _password + ',');
        if (_email != null)
            sb.append("email=" + _email + ',');
        if (_firstName != null)
            sb.append("firstName=" + _firstName + ',');
        if (_lastName != null)
            sb.append("lastName=" + _lastName + ',');
        if (_companyName != null)
            sb.append("companyName=" + _companyName + ',');
        if (_city != null)
            sb.append("city=" + _city + ',');
        if (_twitter != null)
            sb.append("twitter=" + _twitter + ',');
        if (_country != null)
            sb.append("country=" + _country + ',');
        if (_certified != null)
            sb.append("certified=" + _certified + ',');
        if (_type != null)
            sb.append("type=" + _type + ',');
        if (_geographicalArea != null)
            sb.append("geographicalArea=" + _geographicalArea + ',');
        if (_publicProfile != null)
            sb.append("publicProfile=" + _publicProfile + ',');
        if (_linkedin != null)
            sb.append("linkedin=" + _linkedin + ',');
        if (_bio != null)
            sb.append("bio=" + _bio + ',');
        if (_facebook != null)
            sb.append("facebook=" + _facebook + ',');
        if (_isoCode != null)
            sb.append("isoCode=" + _isoCode + ',');
        if (_google != null)
            sb.append("google=" + _google + ',');
        if (_partner != null)
            sb.append("partner=" + _partner + ',');
        if (_internal != null)
            sb.append("internal=" + _internal + ',');
        if (_webSite != null)
            sb.append("webSite=" + _webSite + ',');
        if (_smallPhoto != null)
            sb.append("smallPhoto=" + _smallPhoto + ',');
        if (_bigPhoto != null)
            sb.append("bigPhoto=" + _bigPhoto + ',');
        if (_birthDate != null)
            sb.append("birthDate=" + _birthDate + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.User)) {
            return false;
        }
        com.webratio.webapp.User __other = (com.webratio.webapp.User) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOid();
        otherKey = __other.getOid();
        if (key == null) {
            if (otherKey != null) {
                return false;
            }
        } else {
            if (otherKey == null) {
                return false;
            } else if (!key.equals(otherKey)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = 0;
        java.lang.Object key = null;
        key = this.getOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}
