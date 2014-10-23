package com.webratio.webapp;

public class ActionType implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _name;

    private java.math.BigDecimal _score;

    private java.lang.Boolean _reputation;

    private java.lang.Boolean _participation;

    private java.lang.String _area;

    private java.lang.String _description;

    private java.lang.Boolean _checkTimeElapsed;

    private java.lang.Integer _millisecondsTimeElapsed;

    private java.lang.Boolean _repeatable;

    private com.webratio.webapp.ThematicArea _actiontypeToGamifiedapplication;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getName() {
        return _name;
    }

    public void setName(java.lang.String _name) {
        this._name = _name;
    }

    public java.math.BigDecimal getScore() {
        return _score;
    }

    public void setScore(java.math.BigDecimal _score) {
        this._score = _score;
    }

    public java.lang.Boolean getReputation() {
        return _reputation;
    }

    public void setReputation(java.lang.Boolean _reputation) {
        this._reputation = _reputation;
    }

    public java.lang.Boolean getParticipation() {
        return _participation;
    }

    public void setParticipation(java.lang.Boolean _participation) {
        this._participation = _participation;
    }

    public java.lang.String getArea() {
        return _area;
    }

    public void setArea(java.lang.String _area) {
        this._area = _area;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.Boolean getCheckTimeElapsed() {
        return _checkTimeElapsed;
    }

    public void setCheckTimeElapsed(java.lang.Boolean _checkTimeElapsed) {
        this._checkTimeElapsed = _checkTimeElapsed;
    }

    public java.lang.Integer getMillisecondsTimeElapsed() {
        return _millisecondsTimeElapsed;
    }

    public void setMillisecondsTimeElapsed(java.lang.Integer _millisecondsTimeElapsed) {
        this._millisecondsTimeElapsed = _millisecondsTimeElapsed;
    }

    public java.lang.Boolean getRepeatable() {
        return _repeatable;
    }

    public void setRepeatable(java.lang.Boolean _repeatable) {
        this._repeatable = _repeatable;
    }

    public com.webratio.webapp.ThematicArea getActiontypeToGamifiedapplication() {
        return _actiontypeToGamifiedapplication;
    }

    public void setActiontypeToGamifiedapplication(com.webratio.webapp.ThematicArea _actiontypeToGamifiedapplication) {
        this._actiontypeToGamifiedapplication = _actiontypeToGamifiedapplication;
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
        if (_name != null)
            sb.append("name=" + _name + ',');
        if (_score != null)
            sb.append("score=" + _score + ',');
        if (_reputation != null)
            sb.append("reputation=" + _reputation + ',');
        if (_participation != null)
            sb.append("participation=" + _participation + ',');
        if (_area != null)
            sb.append("area=" + _area + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_checkTimeElapsed != null)
            sb.append("checkTimeElapsed=" + _checkTimeElapsed + ',');
        if (_millisecondsTimeElapsed != null)
            sb.append("millisecondsTimeElapsed=" + _millisecondsTimeElapsed + ',');
        if (_repeatable != null)
            sb.append("repeatable=" + _repeatable + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.ActionType)) {
            return false;
        }
        com.webratio.webapp.ActionType __other = (com.webratio.webapp.ActionType) obj;
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
