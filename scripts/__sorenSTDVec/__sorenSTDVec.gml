function __Srn_Vec2_Dot(a, b) {
    return a.x * b.x + a.y * b.y;
}

function __Srn_Vec2_Distance(a, b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
}

function __Srn_Vec2(_x, _y) constructor {
    x = _x;
    y = _y;
    
    static add = function(v) {
        x += v.x;
        y += v.y;
        return self;
    };
    
    static subtract = function(v) {
        x -= v.x;
        y -= v.y;
        return self;
    };
    
    static scale = function(s) {
        x *= s;
        y *= s;
        return self;
    };
    
    static copy = function() {
        return new __Srn_Vec2(x, y);
    };
    
    static length = function() {
        return sqrt(x * x + y * y);
    };
    
    static normalize = function() {
        var len = sqrt(x * x + y * y);
        if (len != 0) {
            x /= len;
            y /= len;
        }
        return self;
    };
    
    static dot = function(v) {
        return __Srn_Vec2_Dot(self, v);
    };
    
    static distance_to = function(v) {
        return __Srn_Vec2_Distance(self, v);
    };
    
    static lerp = function(v, t) {
        x = lerp(x, v.x, t);
        y = lerp(y, v.y, t);
        return self;
    };
}

function __Srn_Vec3_Dot(a, b) {
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

function __Srn_Vec3_Distance(a, b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    var dz = a.z - b.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
}

function __Srn_Vec3_Cross(a, b) {
    return new __Srn_Vec3(
        a.y * b.z - a.z * b.y,
        a.z * b.x - a.x * b.z,
        a.x * b.y - a.y * b.x
    );
}

function __Srn_Vec3(_x, _y, _z) constructor {
    x = _x;
    y = _y;
    z = _z;
    
    static add = function(v) {
        x += v.x;
        y += v.y;
        z += v.z;
        return self;
    };
    
    static subtract = function(v) {
        x -= v.x;
        y -= v.y;
        z -= v.z;
        return self;
    };
    
    static scale = function(s) {
        x *= s;
        y *= s;
        z *= s;
        return self;
    };
    
    static copy = function() {
        return new __Srn_Vec3(x, y, z);
    };
    
    static length = function() {
        return sqrt(x * x + y * y + z * z);
    };
    
    static normalize = function() {
        var len = sqrt(x * x + y * y + z * z);
        if (len != 0) {
            x /= len;
            y /= len;
            z /= len;
        }
        return self;
    };
    
    static dot = function(v) {
        return __Srn_Vec3_Dot(self, v);
    };
    
    static cross = function(v) {
        return __Srn_Vec3_Cross(self, v);
    };
    
    static distance_to = function(v) {
        return __Srn_Vec3_Distance(self, v);
    };
    
    static lerp = function(v, t) {
        x = lerp(x, v.x, t);
        y = lerp(y, v.y, t);
        z = lerp(z, v.z, t);
        return self;
    };
}

function __Srn_Vec4_Dot(a, b) {
    return a.x * b.x + a.y * b.y + a.z * b.z + a.w * b.w;
}

function __Srn_Vec4_Distance(a, b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    var dz = a.z - b.z;
    var dw = a.w - b.w;
    return sqrt(dx * dx + dy * dy + dz * dz + dw * dw);
}

function __Srn_Vec4(_x, _y, _z, _w) constructor {
    x = _x;
    y = _y;
    z = _z;
    w = _w;
    
    static add = function(v) {
        x += v.x;
        y += v.y;
        z += v.z;
        w += v.w;
        return self;
    };
    
    static subtract = function(v) {
        x -= v.x;
        y -= v.y;
        z -= v.z;
        w -= v.w;
        return self;
    };
    
    static scale = function(s) {
        x *= s;
        y *= s;
        z *= s;
        w *= s;
        return self;
    };
    
    static copy = function() {
        return new __Srn_Vec4(x, y, z, w);
    };
    
    static length = function() {
        return sqrt(x * x + y * y + z * z + w * w);
    };
    
    static normalize = function() {
        var len = sqrt(x * x + y * y + z * z + w * w);
        if (len != 0) {
            x /= len;
            y /= len;
            z /= len;
            w /= len;
        }
        return self;
    };
    
    static dot = function(v) {
        return __Srn_Vec4_Dot(self, v);
    };
    
    static distance_to = function(v) {
        return __Srn_Vec4_Distance(self, v);
    };
    
    static lerp = function(v, t) {
        x = lerp(x, v.x, t);
        y = lerp(y, v.y, t);
        z = lerp(z, v.z, t);
        w = lerp(w, v.w, t);
        return self;
    };
}
