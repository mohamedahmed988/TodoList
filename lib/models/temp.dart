class Districts {
    List<DistrictsSelect>? districtsSelect;

    Districts({this.districtsSelect});

    factory Districts.fromJson(Map<String, dynamic> json) {
        return Districts(
            districtsSelect: json['districtsSelect'] != null ? (json['districtsSelect'] as List).map((i) => DistrictsSelect.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.districtsSelect != null) {
            data['districtsSelect'] = this.districtsSelect!.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class DistrictsSelect {
    String? guidId;
    int? id;
    int? mainId;
    String? name;
    bool? selected;
    int? stage;
    String? typeName;

    DistrictsSelect({this.guidId, this.id, this.mainId, this.name, this.selected, this.stage, this.typeName});

    factory DistrictsSelect.fromJson(Map<String, dynamic> json) {
        return DistrictsSelect(
            guidId: json['guidId'],
            id: json['id'],
            mainId: json['mainId'],
            name: json['name'],
            selected: json['selected'],
            stage: json['stage'],
            typeName: json['typeName'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['guidId'] = this.guidId;
        data['id'] = this.id;
        data['mainId'] = this.mainId;
        data['name'] = this.name;
        data['selected'] = this.selected;
        data['stage'] = this.stage;
        data['typeName'] = this.typeName;
        return data;
    }
}