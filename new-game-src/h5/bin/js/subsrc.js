(function () {
    'use strict';

    /*! *****************************************************************************
    Copyright (c) Microsoft Corporation. All rights reserved.
    Licensed under the Apache License, Version 2.0 (the "License"); you may not use
    this file except in compliance with the License. You may obtain a copy of the
    License at http://www.apache.org/licenses/LICENSE-2.0

    THIS CODE IS PROVIDED ON AN *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY IMPLIED
    WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A PARTICULAR PURPOSE,
    MERCHANTABLITY OR NON-INFRINGEMENT.

    See the Apache Version 2.0 License for specific language governing permissions
    and limitations under the License.
    ***************************************************************************** */
    /* global Reflect, Promise */

    var extendStatics = function(d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };

    function __extends(d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    }

    var __assign = function() {
        __assign = Object.assign || function __assign(t) {
            for (var s, i = 1, n = arguments.length; i < n; i++) {
                s = arguments[i];
                for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p)) t[p] = s[p];
            }
            return t;
        };
        return __assign.apply(this, arguments);
    };

    function __rest(s, e) {
        var t = {};
        for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p) && e.indexOf(p) < 0)
            t[p] = s[p];
        if (s != null && typeof Object.getOwnPropertySymbols === "function")
            for (var i = 0, p = Object.getOwnPropertySymbols(s); i < p.length; i++) if (e.indexOf(p[i]) < 0)
                t[p[i]] = s[p[i]];
        return t;
    }

    function __decorate(decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
        else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    }

    function __param(paramIndex, decorator) {
        return function (target, key) { decorator(target, key, paramIndex); }
    }

    function __metadata(metadataKey, metadataValue) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(metadataKey, metadataValue);
    }

    function __awaiter(thisArg, _arguments, P, generator) {
        return new (P || (P = Promise))(function (resolve, reject) {
            function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
            function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
            function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
            step((generator = generator.apply(thisArg, _arguments || [])).next());
        });
    }

    function __generator(thisArg, body) {
        var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
        return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
        function verb(n) { return function (v) { return step([n, v]); }; }
        function step(op) {
            if (f) throw new TypeError("Generator is already executing.");
            while (_) try {
                if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
                if (y = 0, t) op = [op[0] & 2, t.value];
                switch (op[0]) {
                    case 0: case 1: t = op; break;
                    case 4: _.label++; return { value: op[1], done: false };
                    case 5: _.label++; y = op[1]; op = [0]; continue;
                    case 7: op = _.ops.pop(); _.trys.pop(); continue;
                    default:
                        if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                        if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                        if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                        if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                        if (t[2]) _.ops.pop();
                        _.trys.pop(); continue;
                }
                op = body.call(thisArg, _);
            } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
            if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
        }
    }

    function __exportStar(m, exports) {
        for (var p in m) if (!exports.hasOwnProperty(p)) exports[p] = m[p];
    }

    function __values(o) {
        var m = typeof Symbol === "function" && o[Symbol.iterator], i = 0;
        if (m) return m.call(o);
        return {
            next: function () {
                if (o && i >= o.length) o = void 0;
                return { value: o && o[i++], done: !o };
            }
        };
    }

    function __read(o, n) {
        var m = typeof Symbol === "function" && o[Symbol.iterator];
        if (!m) return o;
        var i = m.call(o), r, ar = [], e;
        try {
            while ((n === void 0 || n-- > 0) && !(r = i.next()).done) ar.push(r.value);
        }
        catch (error) { e = { error: error }; }
        finally {
            try {
                if (r && !r.done && (m = i["return"])) m.call(i);
            }
            finally { if (e) throw e.error; }
        }
        return ar;
    }

    function __spread() {
        for (var ar = [], i = 0; i < arguments.length; i++)
            ar = ar.concat(__read(arguments[i]));
        return ar;
    }

    function __await(v) {
        return this instanceof __await ? (this.v = v, this) : new __await(v);
    }

    function __asyncGenerator(thisArg, _arguments, generator) {
        if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
        var g = generator.apply(thisArg, _arguments || []), i, q = [];
        return i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i;
        function verb(n) { if (g[n]) i[n] = function (v) { return new Promise(function (a, b) { q.push([n, v, a, b]) > 1 || resume(n, v); }); }; }
        function resume(n, v) { try { step(g[n](v)); } catch (e) { settle(q[0][3], e); } }
        function step(r) { r.value instanceof __await ? Promise.resolve(r.value.v).then(fulfill, reject) : settle(q[0][2], r); }
        function fulfill(value) { resume("next", value); }
        function reject(value) { resume("throw", value); }
        function settle(f, v) { if (f(v), q.shift(), q.length) resume(q[0][0], q[0][1]); }
    }

    function __asyncDelegator(o) {
        var i, p;
        return i = {}, verb("next"), verb("throw", function (e) { throw e; }), verb("return"), i[Symbol.iterator] = function () { return this; }, i;
        function verb(n, f) { i[n] = o[n] ? function (v) { return (p = !p) ? { value: __await(o[n](v)), done: n === "return" } : f ? f(v) : v; } : f; }
    }

    function __asyncValues(o) {
        if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
        var m = o[Symbol.asyncIterator], i;
        return m ? m.call(o) : (o = typeof __values === "function" ? __values(o) : o[Symbol.iterator](), i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i);
        function verb(n) { i[n] = o[n] && function (v) { return new Promise(function (resolve, reject) { v = o[n](v), settle(resolve, reject, v.done, v.value); }); }; }
        function settle(resolve, reject, d, v) { Promise.resolve(v).then(function(v) { resolve({ value: v, done: d }); }, reject); }
    }

    function __makeTemplateObject(cooked, raw) {
        if (Object.defineProperty) { Object.defineProperty(cooked, "raw", { value: raw }); } else { cooked.raw = raw; }
        return cooked;
    };

    function __importStar(mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k in mod) if (Object.hasOwnProperty.call(mod, k)) result[k] = mod[k];
        result.default = mod;
        return result;
    }

    function __importDefault(mod) {
        return (mod && mod.__esModule) ? mod : { default: mod };
    }

    class AccountView extends BaseView1 {
        constructor() {
            super();
            let local_Util = Util, login_model = LoginModel.GetInstance(), _group_data_ = {
                "invite": { desc: "邀请者id:" },
                "fenbianlv": { desc: "分辨率:" },
                "plat_name": { desc: "渠道来源:" },
                "account": { desc: "帐号:" },
                "pid": { desc: "PID:" },
                "port": { desc: "Port:" },
                "ip": { desc: "IP:" },
                "Lburl": { desc: "Lburl:" }
            }, UserMsgAdapter_Instance = UserMsgAdapter.GetInstance(), _need_save_cookies_key_list_ = ["account", "ip", "port", "pid", "invite", "plat_name", "Lburl"], default_index_ = 0;
            let _text_item_dic_;
            this.base_file = "login";
            this.layout_file = "AccountView";
            this.layer_value = Enum_UILayer.Top;
            this.need_loading_view = false;
            this.not_close_by_android_back_key = true;
            this.load_callback = function () {
                return __awaiter(this, void 0, void 0, function* () {
                    console.warn("AccountView loadcallback333");
                    this.LoadSuccess();
                });
            };
            this.destroy_callback = function () {
                this.Remove();
            };
            this.InitEvent = () => {
            };
            this.LoadSuccess = () => {
                [this._gp_con, this._lb_server, this._scroller_address, this.m_enter_btn] = this.GetChildrenByNames(["_gp_con", "_lb_server", "_scroller_address", "m_enter_btn"]);
                this._scroller_address.visible = false;
                local_Util.AddClickEvent(this.m_enter_btn, () => {
                    this.ClickLoginBtn();
                }, this, true);
                this._lb_server.on(Laya.Event.CLICK, this, () => {
                    this.ClickServer();
                });
                let onEnterGame = () => {
                    this.Close();
                };
                this.BindEvent(GlobalEventSystem, EventName.GAME_START, onEnterGame);
                this.BindEvent(LoginManager.GetInstance(), LoginStateEvent.OPEN_VIEW, (view_name) => {
                    if (view_name == "LoginCreateRoleView" || view_name == "LoginSelectRoleView") {
                        onEnterGame();
                    }
                });
                console.log("AccountView  LoadSuccess");
                var list = this._scroller_address;
                list.itemRender = AccountIpItem;
                list.repeatX = 1;
                list.repeatY = 4;
                list.vScrollBarSkin = "";
                list.selectEnable = true;
                list.selectHandler = new Laya.Handler(this, this.onSelect);
                list.renderHandler = new Laya.Handler(this, this.updateItem);
                list.array = LoginModel.ConfigDebugIpList.ip_list;
                let event_call_back = (key) => {
                    if (_need_save_cookies_key_list_.indexOf(key) != -1) {
                        this.SaveCookies();
                    }
                    if (key == "ip" || key == "port" || key == "pid") {
                        this.CheckServerDesc();
                    }
                };
                if (!_text_item_dic_)
                    _text_item_dic_ = {};
                let item, v;
                let index = 0;
                for (let key in _group_data_) {
                    item = new AccountItem(this._gp_con);
                    item.Load();
                    _text_item_dic_[key] = item;
                    v = _group_data_[key];
                    item.SetData({
                        "index": index,
                        "key": key,
                        "event_call_back": event_call_back,
                        "value": v
                    });
                    index++;
                }
                this.SetItemLabel("fenbianlv", "720,1280");
                let cookies_data = CookieWrapper.GetInstance().GetCookie(CookieWrapper.LAST_ACCOUNT_DATA, false);
                if (cookies_data && cookies_data != "") {
                    let dic = JSON.parse(cookies_data), item;
                    for (let key in dic) {
                        item = this.SetItemLabel(key, dic[key]);
                    }
                    this.CheckServerDesc();
                }
                else {
                    this.SetItemLabel("account", "请输入帐号");
                    this.SetAddressInfo();
                }
            };
            this.ClickServer = () => {
                this._scroller_address.visible = !this._scroller_address.visible;
            };
            this.CheckServerDesc = () => {
                let ip = this.GetItemLabel("ip"), port = this.GetItemLabel("port"), pid = this.GetItemLabel("pid"), Lburl = this.GetItemLabel("Lburl"), address_data;
                let desc = "未定义";
                for (let vo of LoginModel.ConfigDebugIpList.ip_list) {
                    address_data = vo.split(":");
                    if (ip == address_data[1] && port == address_data[2] && pid == "1") {
                        desc = address_data[0];
                    }
                }
                this._lb_server.text = desc;
            };
            this.SetAddressInfo = (index = default_index_) => {
                let address = LoginModel.ConfigDebugIpList.ip_list[index];
                let address_list = address.split(':');
                this._lb_server.text = address_list[0];
                this.SetItemLabel("ip", address_list[1]);
                this.SetItemLabel("port", address_list[2]);
                this.SetItemLabel("pid", "1");
            };
            this.ClickLoginBtn = () => {
                let accout = this.GetItemLabel("account");
                let regEx = new RegExp('^[A-Za-z0-9]+$');
                if (accout == "" || regEx.test(accout) == false) {
                    Message.show("账号只能由数字和英文字母组成");
                    return;
                }
                let ip = this.GetItemLabel("ip");
                let port = Number(this.GetItemLabel("port"));
                let pid = Number(this.GetItemLabel("pid"));
                let inviter_id = Number(this.GetItemLabel("invite"));
                if (ip && port && pid >= 0) {
                    AppConst.SocketAddress = ip;
                    AppConst.SocketPort = port;
                    login_model.account_id = accout;
                    login_model.pid = pid;
                    login_model.inviter_id = inviter_id;
                    let plat_name = this.GetItemLabel("plat_name");
                    if (plat_name && plat_name != "0") {
                        login_model.plat_name = plat_name;
                        ClientConfig.plat_name = plat_name;
                    }
                    let Lburl = this.GetItemLabel("Lburl");
                    if (Lburl && Lburl != "0" && Lburl != "") {
                        login_model.Lburl = Lburl;
                    }
                    LoginManager.GetInstance().Fire(LoginStateEvent.START_GAME_CONNECT, true);
                }
            };
            this.Remove = () => {
                this.SaveCookies();
                if (_text_item_dic_) {
                    let obj;
                    for (let key in _text_item_dic_) {
                        obj = _text_item_dic_[key];
                        if (obj) {
                            obj.DeleteMe();
                        }
                    }
                    _text_item_dic_ = null;
                }
            };
            this.SaveCookies = () => {
                let dic = {}, item;
                for (let key of _need_save_cookies_key_list_) {
                    item = _text_item_dic_[key];
                    if (item) {
                        dic[key] = item.GetTextLabel();
                    }
                }
                CookieWrapper.GetInstance().SaveCookie(CookieWrapper.LAST_ACCOUNT_DATA, JSON.stringify(dic), false);
            };
            this.GetItemLabel = (key) => {
                let item = _text_item_dic_ && _text_item_dic_[key];
                if (item) {
                    return item.GetTextLabel();
                }
            };
            this.SetItemLabel = (key, value) => {
                let item = _text_item_dic_ && _text_item_dic_[key];
                if (item) {
                    item.SetTextLabel(value);
                }
            };
        }
        updateItem(cell, index) {
            cell.setText(cell.dataSource);
        }
        onSelect(index) {
            console.log("当前选择的索引：" + index);
            this.SetAddressInfo(index);
            this._scroller_address.visible = false;
        }
        DeleteMe() {
            super.DeleteMe();
        }
    }
    window["AccountView"] = AccountView;
    class AccountIpItem extends Laya.Box {
        constructor() {
            super();
            this.m_label = new Laya.Text();
            this.m_label.fontSize = 30;
            this.addChild(this.m_label);
            this.size(AccountIpItem.WID, AccountIpItem.HEI);
        }
        setText(text) {
            this.m_label.text = text;
        }
    }
    AccountIpItem.WID = 373;
    AccountIpItem.HEI = 85;
    class AccountItem extends BaseItem1 {
        constructor(parent) {
            super(parent);
            this.FocusOutFunc = () => {
                let data = this._data;
                if (data) {
                    if (data.event_call_back && data.key) {
                        data.event_call_back(data.key);
                    }
                }
            };
            this.base_file = "login";
            this.layout_file = "AccountItem";
            this.load_callback = () => {
                this.LoadSuccess();
            };
        }
        LoadSuccess() {
            this._ti_value = this.GetChildByName("_ti_value");
            this._lb_desc = this.GetChildByName("_lb_desc");
            this._ti_value.maxChars = 100;
            if (this._cache_text) {
                this._ti_value.text = this._cache_text;
                this._cache_text = null;
            }
            this.InitEvent();
        }
        InitEvent() {
            this._ti_value.on(Laya.Event.BLUR, this, this.FocusOutFunc);
            if (this.need_refresh_data) {
                this.UpdateView();
                this.need_refresh_data = false;
            }
        }
        SetData(_data) {
            this._data = _data;
            if (this.is_loaded) {
                this.UpdateView();
            }
            else {
                this.need_refresh_data = true;
            }
        }
        UpdateView() {
            let data = this._data;
            if (data) {
                if (data.value) {
                    this._lb_desc.text = data.value.desc;
                    this.display_obj.x = 0;
                    this.display_obj.y = data.index * 70;
                }
            }
        }
        GetTextLabel() {
            return this._ti_value && this._ti_value.text.trim() || this._cache_text;
        }
        SetTextLabel(value) {
            if (this.is_loaded)
                this._ti_value.text = value;
            else {
                this._cache_text = value;
            }
        }
        DeleteMe() {
            if (this._ti_value)
                this._ti_value.off(Laya.Event.FOCUS_CHANGE, this, this.FocusOutFunc);
            super.DeleteMe();
        }
    }

}());
