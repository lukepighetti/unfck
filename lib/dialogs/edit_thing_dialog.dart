import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';
import 'package:str/di.dart';
import 'package:str/models/thing_model.dart';

// title
// description
// create
// cancel
class EditThingDialog extends StatefulWidget {
  const EditThingDialog({super.key, this.thing});

  final ThingModel? thing;

  @override
  State<EditThingDialog> createState() => _EditThingDialogState();
}

class _EditThingDialogState extends State<EditThingDialog> {
  late final summaryController =
      TextEditingController(text: widget.thing?.summary);

  late final outlineController =
      TextEditingController(text: widget.thing?.outline);

  late final resolutionController =
      TextEditingController(text: widget.thing?.resolution);

  bool get canSubmit => summaryController.text.trim().isNotEmpty;

  void submit() {
    final t = widget.thing ?? ThingModel.create();
    Navigator.of(context).maybePop(t.copyWith(
      summary: summaryController.text.trim(),
      outline: outlineController.text.trim(),
      resolution: resolutionController.text.trim(),
    ));
  }

  @override
  void dispose() {
    summaryController.dispose();
    outlineController.dispose();
    resolutionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    summaryController.watch(context);
    outlineController.watch(context);
    resolutionController.watch(context);

    final isFirstEvent = !di.appViewModel.value.hasAnyItems;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 500,
        maxWidth: 400,
      ),
      child: Material(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "My event",
                style: context.textHeadline,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                maxLines: 1,
                controller: summaryController,
                decoration: InputDecoration(
                  labelText: "Summary",
                  hintText: isFirstEvent
                      ? "Went sailing with Joe on Long Lake"
                      : null,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: outlineController,
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: "Plot outline (Optional)",
                  hintText: isFirstEvent
                      ? "1. launched in high winds\n"
                          "2. crashed the boat\n"
                          "3. incredible wind power\n"
                          "4. pushaw is huge\n"
                          "5. had to land on smashed dock"
                      : null,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: resolutionController,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Resolution (Optional)",
                  hintText: isFirstEvent
                      ? "Felt amazing to get out with an old friend"
                      : null,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FilledButton(
                onPressed: canSubmit ? submit : null,
                child: Text("Save Event"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
